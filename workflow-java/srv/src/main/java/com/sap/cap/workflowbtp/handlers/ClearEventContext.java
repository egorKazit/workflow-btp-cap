package com.sap.cap.workflowbtp.handlers;

import java.util.List;

import cds.gen.workflowservice.Header;

import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;

@EventName("clearAll")
public interface ClearEventContext extends EventContext {
    // The return value
    void setResult(List<Header> headers);

    List<Header> getResult();
}
