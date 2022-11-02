package cds.gen.sap.workflow.schema;

import com.sap.cds.ql.CdsName;
import com.sap.cds.ql.ElementRef;
import com.sap.cds.ql.StructuredType;
import com.sap.cds.ql.cqn.CqnPredicate;
import java.lang.String;
import java.util.function.Function;

/**
 * Aspect for entities with canonical universal IDs
 *
 * See https://cap.cloud.sap/docs/cds/common#aspect-cuid
 */
@CdsName("sap.workflow.schema.Item")
public interface Item_ extends StructuredType<Item_> {
  String CDS_NAME = "sap.workflow.schema.Item";

  ElementRef<String> ID();

  ElementRef<String> name();

  Header_ header();

  Header_ header(Function<Header_, CqnPredicate> filter);

  ElementRef<String> header_ID();
}
