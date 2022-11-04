package com.sap.cap.workflowbtp.handlers;

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

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@ServiceName(WorkflowService_.CDS_NAME)
public class HeaderHandler implements EventHandler {

    @Autowired
    PersistenceService persistenceService;

    @Before(event = CdsService.EVENT_CREATE, entity = Header_.CDS_NAME)
    public void beforeCreate(List<Header> headers) {
        headers.forEach((header) -> header.setStatus("In Progress"));
    }

    @Before(event = CdsService.EVENT_UPDATE, entity = Header_.CDS_NAME)
    public void beforeUpdate(List<Header> headers) {
        List<String> headerIds = headers.stream().map(header -> header.getId()).collect(Collectors.toList());
        CqnSelect persistHeaderQuery = Select.from(Header_.class).columns(b-> b.ID(), b -> b.status()).where(b -> b.ID().in(headerIds));
        List<Header> persistHeaders = persistenceService.run(persistHeaderQuery).listOf(Header.class);
        headers.forEach((header) -> {
            if(persistHeaders.stream().anyMatch(headerToCheck -> headerToCheck.getId().equals(header.getId()) && headerToCheck.getStatus().equals("Completed"))){
                new ServiceException(ErrorStatuses.FORBIDDEN, "Request can not be edited in \"Complete\" status");
            }
            header.setStatus("Under Review");
        });
    }

    @Before(event = CdsService.EVENT_DELETE, entity = Header_.CDS_NAME)
    public void beforeDelete(List<Header> headers) {
        if (!headers.stream().allMatch(header -> ((String) header.getStatus()).equals("In Progress")))
            new ServiceException(ErrorStatuses.NOT_FOUND, "Wrong status for deletion");
    }

    @On(event = CompleteContext.CDS_NAME, entity = Header_.CDS_NAME)
    public void complete(CompleteEventContext completeEventContext) {
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
