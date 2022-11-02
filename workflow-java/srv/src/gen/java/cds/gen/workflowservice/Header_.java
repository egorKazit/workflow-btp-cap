package cds.gen.workflowservice;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import com.sap.cds.ql.cqn.CqnPredicate;
import java.lang.String;
import java.time.Instant;
import java.util.function.Function;

/**
 * Aspect to capture changes by user and name
 *
 * See https://cap.cloud.sap/docs/cds/common#aspect-managed
 */
@CdsName("WorkflowService.Header")
public interface Header_ extends StructuredType<Header_> {
  String CDS_NAME = "WorkflowService.Header";

  ElementRef<String> ID();

  ElementRef<Instant> createdAt();

  ElementRef<String> createdBy();

  ElementRef<Instant> modifiedAt();

  ElementRef<String> modifiedBy();

  ElementRef<String> name();

  ElementRef<String> status();

  ElementRef<String> resolution();

  Item_ items();

  Item_ items(Function<Item_, CqnPredicate> filter);

  HeaderTexts_ texts();

  HeaderTexts_ texts(Function<HeaderTexts_, CqnPredicate> filter);

  HeaderTexts_ localized();

  HeaderTexts_ localized(Function<HeaderTexts_, CqnPredicate> filter);
}
