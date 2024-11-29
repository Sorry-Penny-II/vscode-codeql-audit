import java
import semmle.code.java.dataflow.DataFlow
import ExclusiveMethod
import interface.SSRFSink

/**
 * SSRF Sink
 */
abstract class ExclusiveSink extends SSRFSink {
}
/**
 * com.weaver.teams.util.HttpUtils httpJsonPost
 */
class EteamsCommonSink extends ExclusiveSink {
  EteamsCommonSink() {
    exists(MethodAccess methodAccess |
      methodAccess.getMethod() instanceof EteamsCommonHttpUtilsHttpJsonPostMethod and
      this.asExpr() = methodAccess.getArgument(0)
    )
  }
  override string getSinkType() { result = "Eteams" }
}