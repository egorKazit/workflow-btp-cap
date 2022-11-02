package cds.gen.sap.workflow.schema;

import com.sap.cds.ql.CdsName;
import java.lang.Class;
import java.lang.String;

@CdsName("sap.workflow.schema")
public interface Schema_ {
  String CDS_NAME = "sap.workflow.schema";

  Class<Item_> ITEM = Item_.class;

  Class<HeaderTexts_> HEADER_TEXTS = HeaderTexts_.class;

  Class<Header_> HEADER = Header_.class;
}
