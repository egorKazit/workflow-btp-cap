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
                    'READ',
                    'WRITE',
                ],
                to    : 'DatabaseOperator'
            },
            {
                grant : ['READ'],
                where : 'CreatedBy = $user'
            },
        ]
    )           as projection on db.Header actions {
        @(requires : 'DatabaseOperator')
        action complete(resolution : String) returns Header;
        @(requires : 'ClearOperator')
        action clearAll();
    }

    @readonly
    entity Item as projection on db.Item;
}
