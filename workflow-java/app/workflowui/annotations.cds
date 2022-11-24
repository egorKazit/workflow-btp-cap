using WorkflowService as WorkflowService from '../../srv/workflow-service';

annotate WorkflowService.Header with @odata.draft.enabled;
annotate WorkflowService.Header with @UI : {
    LineItem : [
        {
            $Type:'UI.DataField',
            Value : name,
        }
    ]
};