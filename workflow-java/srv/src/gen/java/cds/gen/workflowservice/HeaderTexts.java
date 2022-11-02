package cds.gen.workflowservice;

import com.sap.cds.CdsData;
import com.sap.cds.Struct;
import com.sap.cds.ql.CdsName;
import java.lang.String;

@CdsName("WorkflowService.Header.texts")
public interface HeaderTexts extends CdsData {
  String LOCALE = "locale";

  String ID = "ID";

  String STATUS = "status";

  /**
   * Type for a language code
   */
  String getLocale();

  /**
   * Type for a language code
   */
  void setLocale(String locale);

  @CdsName(ID)
  String getId();

  @CdsName(ID)
  void setId(String id);

  String getStatus();

  void setStatus(String status);

  HeaderTexts_ ref();

  static HeaderTexts create() {
    return Struct.create(HeaderTexts.class);
  }
}
