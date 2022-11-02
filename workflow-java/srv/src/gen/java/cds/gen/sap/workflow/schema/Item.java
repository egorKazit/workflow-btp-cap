package cds.gen.sap.workflow.schema;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.String;
import java.util.HashMap;
import java.util.Map;

/**
 * Aspect for entities with canonical universal IDs
 *
 * See https://cap.cloud.sap/docs/cds/common#aspect-cuid
 */
@CdsName("sap.workflow.schema.Item")
public interface Item extends CdsData {
  String ID = "ID";

  String NAME = "name";

  String HEADER = "header";

  String HEADER_ID = "header_ID";

  @CdsName(ID)
  String getId();

  @CdsName(ID)
  void setId(String id);

  String getName();

  void setName(String name);

  Header getHeader();

  void setHeader(Map<String, ?> header);

  @CdsName(HEADER_ID)
  String getHeaderId();

  @CdsName(HEADER_ID)
  void setHeaderId(String headerId);

  Item_ ref();

  static Item create() {
    return Struct.create(Item.class);
  }

  static Item create(String id) {
    Map<String, Object> keys = new HashMap<>();
    keys.put(ID, id);
    return Struct.access(keys).as(Item.class);
  }
}
