DROP VIEW IF EXISTS localized_fr_WorkflowService_Item;
DROP VIEW IF EXISTS localized_de_WorkflowService_Item;
DROP VIEW IF EXISTS localized_fr_WorkflowService_Header;
DROP VIEW IF EXISTS localized_de_WorkflowService_Header;
DROP VIEW IF EXISTS localized_fr_sap_workflow_schema_Item;
DROP VIEW IF EXISTS localized_de_sap_workflow_schema_Item;
DROP VIEW IF EXISTS localized_fr_sap_workflow_schema_Header;
DROP VIEW IF EXISTS localized_de_sap_workflow_schema_Header;
DROP VIEW IF EXISTS localized_WorkflowService_Item;
DROP VIEW IF EXISTS localized_WorkflowService_Header;
DROP VIEW IF EXISTS localized_sap_workflow_schema_Item;
DROP VIEW IF EXISTS localized_sap_workflow_schema_Header;
DROP VIEW IF EXISTS WorkflowService_Header_texts;
DROP VIEW IF EXISTS WorkflowService_Item;
DROP VIEW IF EXISTS WorkflowService_Header;

DROP TABLE IF EXISTS sap_workflow_schema_Header_texts;
DROP TABLE IF EXISTS sap_workflow_schema_Item;
DROP TABLE IF EXISTS sap_workflow_schema_Header;

CREATE TABLE sap_workflow_schema_Header (
  ID NVARCHAR(36) NOT NULL,
  createdAt TIMESTAMP,
  createdBy NVARCHAR(255),
  modifiedAt TIMESTAMP,
  modifiedBy NVARCHAR(255),
  name NVARCHAR(111),
  status NVARCHAR(111),
  resolution NVARCHAR(111),
  PRIMARY KEY(ID)
);

CREATE TABLE sap_workflow_schema_Item (
  ID NVARCHAR(36) NOT NULL,
  name NVARCHAR(111),
  header_ID NVARCHAR(36),
  PRIMARY KEY(ID)
);

CREATE TABLE sap_workflow_schema_Header_texts (
  locale NVARCHAR(14) NOT NULL,
  ID NVARCHAR(36) NOT NULL,
  status NVARCHAR(111),
  PRIMARY KEY(locale, ID)
);

CREATE VIEW WorkflowService_Header AS SELECT
  Header_0.ID,
  Header_0.createdAt,
  Header_0.createdBy,
  Header_0.modifiedAt,
  Header_0.modifiedBy,
  Header_0.name,
  Header_0.status,
  Header_0.resolution
FROM sap_workflow_schema_Header AS Header_0;

CREATE VIEW WorkflowService_Item AS SELECT
  Item_0.ID,
  Item_0.name,
  Item_0.header_ID
FROM sap_workflow_schema_Item AS Item_0;

CREATE VIEW WorkflowService_Header_texts AS SELECT
  texts_0.locale,
  texts_0.ID,
  texts_0.status
FROM sap_workflow_schema_Header_texts AS texts_0;

CREATE VIEW localized_sap_workflow_schema_Header AS SELECT
  L_0.ID,
  L_0.createdAt,
  L_0.createdBy,
  L_0.modifiedAt,
  L_0.modifiedBy,
  L_0.name,
  coalesce(localized_1.status, L_0.status) AS status,
  L_0.resolution
FROM (sap_workflow_schema_Header AS L_0 LEFT JOIN sap_workflow_schema_Header_texts AS localized_1 ON localized_1.ID = L_0.ID AND localized_1.locale = 'en');

CREATE VIEW localized_sap_workflow_schema_Item AS SELECT
  L.ID,
  L.name,
  L.header_ID
FROM sap_workflow_schema_Item AS L;

CREATE VIEW localized_WorkflowService_Header AS SELECT
  Header_0.ID,
  Header_0.createdAt,
  Header_0.createdBy,
  Header_0.modifiedAt,
  Header_0.modifiedBy,
  Header_0.name,
  Header_0.status,
  Header_0.resolution
FROM localized_sap_workflow_schema_Header AS Header_0;

CREATE VIEW localized_WorkflowService_Item AS SELECT
  Item_0.ID,
  Item_0.name,
  Item_0.header_ID
FROM localized_sap_workflow_schema_Item AS Item_0;

CREATE VIEW localized_de_sap_workflow_schema_Header AS SELECT
  L_0.ID,
  L_0.createdAt,
  L_0.createdBy,
  L_0.modifiedAt,
  L_0.modifiedBy,
  L_0.name,
  coalesce(localized_de_1.status, L_0.status) AS status,
  L_0.resolution
FROM (sap_workflow_schema_Header AS L_0 LEFT JOIN sap_workflow_schema_Header_texts AS localized_de_1 ON localized_de_1.ID = L_0.ID AND localized_de_1.locale = 'de');

CREATE VIEW localized_fr_sap_workflow_schema_Header AS SELECT
  L_0.ID,
  L_0.createdAt,
  L_0.createdBy,
  L_0.modifiedAt,
  L_0.modifiedBy,
  L_0.name,
  coalesce(localized_fr_1.status, L_0.status) AS status,
  L_0.resolution
FROM (sap_workflow_schema_Header AS L_0 LEFT JOIN sap_workflow_schema_Header_texts AS localized_fr_1 ON localized_fr_1.ID = L_0.ID AND localized_fr_1.locale = 'fr');

CREATE VIEW localized_de_sap_workflow_schema_Item AS SELECT
  L.ID,
  L.name,
  L.header_ID
FROM sap_workflow_schema_Item AS L;

CREATE VIEW localized_fr_sap_workflow_schema_Item AS SELECT
  L.ID,
  L.name,
  L.header_ID
FROM sap_workflow_schema_Item AS L;

CREATE VIEW localized_de_WorkflowService_Header AS SELECT
  Header_0.ID,
  Header_0.createdAt,
  Header_0.createdBy,
  Header_0.modifiedAt,
  Header_0.modifiedBy,
  Header_0.name,
  Header_0.status,
  Header_0.resolution
FROM localized_de_sap_workflow_schema_Header AS Header_0;

CREATE VIEW localized_fr_WorkflowService_Header AS SELECT
  Header_0.ID,
  Header_0.createdAt,
  Header_0.createdBy,
  Header_0.modifiedAt,
  Header_0.modifiedBy,
  Header_0.name,
  Header_0.status,
  Header_0.resolution
FROM localized_fr_sap_workflow_schema_Header AS Header_0;

CREATE VIEW localized_de_WorkflowService_Item AS SELECT
  Item_0.ID,
  Item_0.name,
  Item_0.header_ID
FROM localized_de_sap_workflow_schema_Item AS Item_0;

CREATE VIEW localized_fr_WorkflowService_Item AS SELECT
  Item_0.ID,
  Item_0.name,
  Item_0.header_ID
FROM localized_fr_sap_workflow_schema_Item AS Item_0;

