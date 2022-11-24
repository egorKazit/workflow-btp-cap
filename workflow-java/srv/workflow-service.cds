using {sap.workflow.schema as db} from '../db/schema';

service WorkflowService @(requires : 'authenticated-user') {
    action clearAll();

    entity Header @(
        Capabilities : {
            InsertRestrictions.Insertable : true,
            UpdateRestrictions.Updatable  : true,
            DeleteRestrictions.Deletable  : false
        },
        restrict     : [
            {
                grant : [
                    'CREATE',
                    'READ',
                    'WRITE',
                    'complete',
                    'startWorkflow'
                ],
                to    : 'DatabaseOperator'
            },
            {
                grant : ['clearAll'],
                to    : 'ClearOperator'
            },
            {
                grant : ['READ'],
                where : 'CreatedBy = $user'
            },
        ]
    )           as projection on db.Header {
        *,
        @readonly ID,
        @readonly resolution,
        @readonly status,
    } actions {
        @sap.applicable.path : 'startWorkflow'
        action startWorkflow()               returns Header;
        action complete(resolution : String) returns Header;
        action clearAll();
    }

    entity Item as projection on db.Item {
        *,
        @readonly ID,
    };
}
