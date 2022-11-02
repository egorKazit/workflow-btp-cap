using {sap.workflow.schema as db} from '../db/schema';

service WorkflowService {
    entity Header @(Capabilities : {Deletable : false}) as projection on db.Header actions {
        action complete(resolution : String) returns Header;
    }

    @readonly
    entity Item                                         as projection on db.Item;
}
