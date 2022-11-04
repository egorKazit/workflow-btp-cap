package com.sap.cap.workflowbtp.handlers;

import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;

import cds.gen.workflowservice.Header;
import cds.gen.workflowservice.CompleteContext;

@EventName(CompleteContext.CDS_NAME)
public interface CompleteEventContext extends EventContext{

    // CqnSelect that points to the entity the action was called on
    CqnSelect getCqn();

    // The 'resolution' input parameter
    String getResolution();
    void setResolution(String resolution);

    // The return value
    void setResult(Header header);
    Header getResult();

}