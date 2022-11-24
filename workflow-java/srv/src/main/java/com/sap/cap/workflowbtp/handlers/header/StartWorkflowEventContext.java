package com.sap.cap.workflowbtp.handlers.header;

import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;

import cds.gen.workflowservice.Header;
import cds.gen.workflowservice.StartWorkflowContext;

@EventName(StartWorkflowContext.CDS_NAME)
public interface StartWorkflowEventContext extends EventContext {

    // CqnSelect that points to the entity the action was called on
    CqnSelect getCqn();

    // The 'resolution' input parameter
    String getResolution();

    void setResolution(String resolution);

    // The return value
    void setResult(Header header);

}