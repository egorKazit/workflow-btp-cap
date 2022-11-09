package com.sap.cap.workflowbtp.handlers.utils;

/**
 * Function interface to execute some actions
 */
@FunctionalInterface
public interface EventExecutor {
    /**
     * Main method to execute event
     */
    void execute();
}
