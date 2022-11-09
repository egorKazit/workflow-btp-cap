package com.sap.cap.workflowbtp.handlers.utils;

import java.time.temporal.ChronoUnit;
import java.util.Date;
import java.util.Queue;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import javax.annotation.PostConstruct;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.NonNull;
import lombok.extern.log4j.Log4j2;
import org.springframework.stereotype.Service;

@Log4j2
@Service
public class EventProcessor {

    private final Queue<Event> eventsQueue = new LinkedBlockingQueue<>();
    private final ScheduledExecutorService scheduler = Executors.newSingleThreadScheduledExecutor();

    public void putEventOnQueue(Event event) {
        eventsQueue.add(event);
    }

    public boolean checkForExistingEventWithinTime(Event eventToCheck) {
        return eventsQueue.stream().anyMatch(event -> event.eventName.equals(eventToCheck.eventName)
                && event.initDate.toInstant().plus(1, ChronoUnit.HOURS).isAfter(eventToCheck.initDate.toInstant()));
    }

    @PostConstruct
    private void initScheduling() {
        // start periodical job to process an event
        scheduler.scheduleWithFixedDelay(() -> {
            Event event = eventsQueue.poll();
            if (event == null)
                return;
            // trace event and handle it
            log.atTrace().log("Start event {} with initiation date {} at {}", event.eventName, event.initDate, new Date());
            event.eventExecutor.execute();
            log.atTrace().log("End event {} with initiation date {} at {}", event.eventName, event.initDate, new Date());
        }, 0, 500, TimeUnit.MILLISECONDS);
    }

    /**
     * Event metadata
     */
    @Builder
    @NonNull
    @AllArgsConstructor(access = AccessLevel.PRIVATE)
    public static class Event {
        private final String eventName;
        private final Date initDate;
        private final EventExecutor eventExecutor;
    }

}
