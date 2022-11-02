namespace sap.workflow.schema;

using
{
    cuid,
    managed
}
from '@sap/cds/common';

entity Header : cuid, managed
{
    name : String(111);
    @readonly status : localized String(111);
    resolution : String(111);
    items : Composition of many Item on items.header = $self;
}

entity Item : cuid
{
    name : String(111);
    header : Association to one Header;
}
