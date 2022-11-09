package com.sap.cap.workflowbtp.handlers.service;

import cds.gen.workflowservice.Header;
import cds.gen.workflowservice.Header_;
import com.sap.cap.workflowbtp.handlers.utils.DataZipper;
import com.sap.cap.workflowbtp.handlers.utils.EventExecutor;
import com.sap.cds.ql.Delete;
import com.sap.cds.ql.Select;
import com.sap.cds.ql.StructuredType;
import com.sap.cds.ql.cqn.CqnDelete;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.persistence.PersistenceService;
import java.io.IOException;
import java.util.Date;
import java.util.List;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.apache.commons.lang3.ArrayUtils;

/**
 * Clear event executor
 */
@Log4j2
@AllArgsConstructor
public class ClearEventExecutor implements EventExecutor {

    private final PersistenceService persistenceService;
    private final DataZipper dataZipper;

    @Override
    public void execute() {
        // gather all headers with items in status completed
        CqnSelect completedHeadersQuery = Select.from(Header_.class)
                .columns(StructuredType::_all, b -> b.expand(StructuredType::_all).as("items"))
                .where(b -> b.status().eq("Completed"));
        List<Header> completedHeaders = persistenceService.run(completedHeadersQuery).listOf(Header.class);
        try {
            // zip headers into file
            List<String> processedKeys = dataZipper.zip(String.format("/tmp/requests-%s.zip", new Date()), "requests.txt", completedHeaders,
                    object -> ArrayUtils.toObject((object).toString().getBytes()),
                    Header::getId);
            // Remove all from database
            CqnDelete headerToDelete = Delete.from(Header_.class).where(b -> b.ID().in(processedKeys));
            persistenceService.run(headerToDelete);
        } catch (IOException ioException) {
            log.atError().withThrowable(ioException).log("Error on zipping: {}", ioException.getMessage());
        }
    }
}
