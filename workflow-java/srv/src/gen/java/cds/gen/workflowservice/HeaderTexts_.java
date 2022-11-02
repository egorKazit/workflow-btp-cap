package cds.gen.workflowservice;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import java.lang.String;

@CdsName("WorkflowService.Header.texts")
public interface HeaderTexts_ extends StructuredType<HeaderTexts_> {
  String CDS_NAME = "WorkflowService.Header.texts";

  ElementRef<String> locale();

  ElementRef<String> ID();

  ElementRef<String> status();
}
