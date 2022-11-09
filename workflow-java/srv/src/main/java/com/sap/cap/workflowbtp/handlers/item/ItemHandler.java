package com.sap.cap.workflowbtp.handlers.item;

import java.util.List;

import com.sap.cds.services.cds.CdsService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.ServiceName;

import org.springframework.stereotype.Service;

import cds.gen.workflowservice.Item;
import cds.gen.workflowservice.Item_;
import cds.gen.workflowservice.WorkflowService_;

@Service
@ServiceName(WorkflowService_.CDS_NAME)
public class ItemHandler implements EventHandler {

    @Before(event = CdsService.EVENT_CREATE, entity = Item_.CDS_NAME)
    @SuppressWarnings("unused")
    public void beforeCreate(List<Item> items) {
    }

}
