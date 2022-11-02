package cds.gen.workflowservice;

import com.sap.cds.ql.cqn.CqnSelect;
import com.sap.cds.services.EventContext;
import com.sap.cds.services.EventName;
import java.lang.String;

@EventName("complete")
public interface CompleteContext extends EventContext {
  String RESOLUTION = "resolution";

  String CDS_NAME = "complete";

  String getResolution();

  void setResolution(String resolution);

  CqnSelect getCqn();

  void setCqn(CqnSelect select);

  static CompleteContext create() {
    return EventContext.create(CompleteContext.class, "WorkflowService.Header");
  }

  void setResult(Header result);

  Header getResult();

  static CompleteContext create(String entityName) {
    return EventContext.create(CompleteContext.class, entityName);
  }
}
