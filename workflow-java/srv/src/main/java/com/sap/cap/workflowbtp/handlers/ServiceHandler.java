package com.sap.cap.workflowbtp.handlers;

import cds.gen.workflowservice.WorkflowService_;
import cds.gen.workflowservice.Header_;
import cds.gen.workflowservice.ClearAllContext;
import cds.gen.workflowservice.Header;

import java.util.List;
import com.sap.cds.services.handler.annotations.ServiceName;
import com.sap.cds.ql.Select;
import com.sap.cds.ql.Delete;
import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.ql.cqn.CqnDelete;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.persistence.PersistenceService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
@ServiceName(WorkflowService_.CDS_NAME)
public class ServiceHandler implements EventHandler {
    
    @Autowired
    PersistenceService persistenceService;

    @On(event = ClearAllContext.CDS_NAME)
    public void clearAll(ClearEventContext clearEventContext) {
        CqnSelect completedHeadersQuery = Select.from(Header_.class).where( b -> b.status().eq("Completed"));
        List<Header> completedHeaders = persistenceService.run(completedHeadersQuery).listOf(Header.class);
        CqnDelete headerToDelete = Delete.from(Header_.class).where( b -> b.status().eq("Completed"));
        persistenceService.run(headerToDelete);
        clearEventContext.setResult(completedHeaders);
    }

}
