package com.sap.cap.workflowbtp.handlers;

import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;

import cds.gen.workflowservice.Header;

@EventName("complete")
public interface CompleteEventContext extends EventContext{

    // CqnSelect that points to the entity the action was called on
    CqnSelect getCqn();

    // The 'stars' input parameter
    String getResolution();
    void setResolution(String resolution);

    // The return value
    void setResult(Header header);
    Header getResult();

}