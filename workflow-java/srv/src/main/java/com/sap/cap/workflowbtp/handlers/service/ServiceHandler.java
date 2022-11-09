package com.sap.cap.workflowbtp.handlers.service;

import cds.gen.workflowservice.ClearAllContext;
import cds.gen.workflowservice.WorkflowService_;
import com.sap.cap.workflowbtp.handlers.utils.EventProcessor;
import com.sap.cds.services.ErrorStatuses;
import com.sap.cds.services.ServiceException;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;
import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j2;
import org.jetbrains.annotations.NotNull;
import org.springframework.stereotype.Service;

/**
 * Service handler.
 * The class is aimed to handle operation related to the service directly
 */
@Log4j2
@AllArgsConstructor
@Service
@ServiceName(WorkflowService_.CDS_NAME)
public class ServiceHandler implements EventHandler {

    private final EventProcessor eventProcessor;
    private final EventExecutorFactory eventExecutorFactory;

    /**
     * Handler for "Clear All" action
     *
     * @param clearEventContext action context
     */
    @On(event = ClearAllContext.CDS_NAME)
    public final void clearAll(@NotNull ClearEventContext clearEventContext) {
        EventProcessor.Event newEvent = EventProcessor.Event.builder().eventName("Cleaner Task")
                .initDate(new Date())
                .eventExecutor(eventExecutorFactory.getEventExecutorByName(EventExecutorFactory.EventExecutorName.CLEAR))
                .build();
        if (eventProcessor.checkForExistingEventWithinTime(newEvent))
            throw new ServiceException(ErrorStatuses.BAD_REQUEST, "Can not initiate cleaning because there's already enrolled one");
        eventProcessor.putEventOnQueue(newEvent);
        clearEventContext.setCompleted();
    }


}
