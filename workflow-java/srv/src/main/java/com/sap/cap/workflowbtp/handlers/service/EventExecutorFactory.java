package com.sap.cap.workflowbtp.handlers.service;

import com.sap.cap.workflowbtp.handlers.utils.DataZipper;
import com.sap.cap.workflowbtp.handlers.utils.EventExecutor;
import com.sap.cds.services.persistence.PersistenceService;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.jetbrains.annotations.NotNull;
import org.springframework.stereotype.Service;

/**
 * Event executor factory
 */
@Log4j2
@AllArgsConstructor
@Service
public class EventExecutorFactory {

    private final PersistenceService persistenceService;
    private final DataZipper dataZipper;

    EventExecutor getEventExecutorByName(@NotNull EventExecutorName eventExecutorName) {
        switch (eventExecutorName) {
            case CLEAR:
                return new ClearEventExecutor(persistenceService, dataZipper);
            default:
                return () -> log.atWarn().log("Unknown event executor");
        }
    }

    /**
     * Event names
     */
    enum EventExecutorName {
        CLEAR()
    }

}
