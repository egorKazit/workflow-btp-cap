package cds.gen.workflowservice;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.String;
import java.time.Instant;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Aspect to capture changes by user and name
 *
 * See https://cap.cloud.sap/docs/cds/common#aspect-managed
 */
@CdsName("WorkflowService.Header")
public interface Header extends CdsData {
  String ID = "ID";

  String CREATED_AT = "createdAt";

  String CREATED_BY = "createdBy";

  String MODIFIED_AT = "modifiedAt";

  String MODIFIED_BY = "modifiedBy";

  String NAME = "name";

  String STATUS = "status";

  String RESOLUTION = "resolution";

  String ITEMS = "items";

  String TEXTS = "texts";

  String LOCALIZED = "localized";

  @CdsName(ID)
  String getId();

  @CdsName(ID)
  void setId(String id);

  Instant getCreatedAt();

  void setCreatedAt(Instant createdAt);

  /**
   * Canonical user ID
   */
  String getCreatedBy();

  /**
   * Canonical user ID
   */
  void setCreatedBy(String createdBy);

  Instant getModifiedAt();

  void setModifiedAt(Instant modifiedAt);

  /**
   * Canonical user ID
   */
  String getModifiedBy();

  /**
   * Canonical user ID
   */
  void setModifiedBy(String modifiedBy);

  String getName();

  void setName(String name);

  String getStatus();

  void setStatus(String status);

  String getResolution();

  void setResolution(String resolution);

  List<Item> getItems();

  void setItems(List<? extends Map<String, ?>> items);

  List<HeaderTexts> getTexts();

  void setTexts(List<? extends Map<String, ?>> texts);

  HeaderTexts getLocalized();

  void setLocalized(Map<String, ?> localized);

  Header_ ref();

  static Header create() {
    return Struct.create(Header.class);
  }

  static Header create(String id) {
    Map<String, Object> keys = new HashMap<>();
    keys.put(ID, id);
    return Struct.access(keys).as(Header.class);
  }
}
