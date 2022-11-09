package com.sap.cap.workflowbtp.handlers.header;

import cds.gen.workflowservice.WorkflowService_;
import cds.gen.workflowservice.Header_;
import cds.gen.workflowservice.Header;
import cds.gen.workflowservice.CompleteContext;

import java.util.List;
import java.util.stream.Collectors;

import com.sap.cds.ql.Select;
import com.sap.cds.ql.Update;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.ql.cqn.CqnUpdate;
import com.sap.cds.services.ErrorStatuses;
import com.sap.cds.services.ServiceException;
import com.sap.cds.services.cds.CdsService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.services.persistence.PersistenceService;

import org.jetbrains.annotations.NotNull;
import org.springframework.stereotype.Service;

/**
 * Header handler.
 * The class is aimed to handle main operation like data enhancements before create/update or prevent deletion
 */
@Service
@ServiceName(WorkflowService_.CDS_NAME)
public class HeaderHandler implements EventHandler {

    private final PersistenceService persistenceService;

    /**
     * Main constructor.
     * Create to inject the services
     *
     * @param persistenceService persistence service injection
     */
    public HeaderHandler(PersistenceService persistenceService) {
        this.persistenceService = persistenceService;
    }

    /**
     * The method to prefill data before creation
     *
     * @param headers header to be created
     */
    @Before(event = CdsService.EVENT_CREATE, entity = Header_.CDS_NAME)
    @SuppressWarnings("unused")
    public void beforeCreate(@NotNull List<Header> headers) {
        headers.forEach(header -> header.setStatus("In Progress"));
    }

    /**
     * The method to check data before update
     *
     * @param headers header to be updated
     */
    @Before(event = CdsService.EVENT_UPDATE, entity = Header_.CDS_NAME)
    @SuppressWarnings("unused")
    public void beforeUpdate(@NotNull List<Header> headers) {
        List<String> headerIds = headers.stream().map(Header::getId).collect(Collectors.toList());
        CqnSelect persistHeaderQuery = Select.from(Header_.class).columns(Header_::ID, Header_::status).where(b -> b.ID().in(headerIds));
        List<Header> persistHeaders = persistenceService.run(persistHeaderQuery).listOf(Header.class);
        headers.forEach(header -> {
            if (persistHeaders.stream().anyMatch(headerToCheck -> headerToCheck.getId().equals(header.getId()) && headerToCheck.getStatus().equals("Completed"))) {
                throw new ServiceException(ErrorStatuses.FORBIDDEN, "Requests can not be edited in \"Complete\" status");
            }
            header.setStatus("Under Review");
        });
    }

    /**
     * The method to check data before deletion
     *
     * @param headers header to be deleted
     */
    @Before(event = CdsService.EVENT_DELETE, entity = Header_.CDS_NAME)
    @SuppressWarnings("unused")
    public void beforeDelete(@NotNull List<Header> headers) {
        if (!headers.stream().allMatch(header -> (header.getStatus()).equals("In Progress")))
            throw new ServiceException(ErrorStatuses.NOT_FOUND, "Wrong status for deletion");
    }

    /**
     * Complete action.
     * It marks all incoming request as completed
     *
     * @param completeEventContext interface for completed action context
     */
    @On(event = CompleteContext.CDS_NAME, entity = Header_.CDS_NAME)
    @SuppressWarnings("unused")
    public void complete(@NotNull CompleteEventContext completeEventContext) {
        CqnSelect selectStatement = completeEventContext.getCqn();
        Header header = persistenceService.run(selectStatement).first(Header.class)
                .orElseThrow(() -> new ServiceException(ErrorStatuses.NOT_FOUND, "Request not found"));
        header.setStatus("Completed");
        header.setResolution(completeEventContext.getResolution());
        CqnUpdate updateStatement = Update.entity(Header_.class)
                .data(header).where(b -> b.ID().eq(header.getId()));
        persistenceService.run(updateStatement);
        completeEventContext.setResult(header);
    }

}
