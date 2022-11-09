package com.sap.cap.workflowbtp.handlers.service;

import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;

/**
 * Context for clear event
 */
@EventName("clearAll")
public interface ClearEventContext extends EventContext {
}
