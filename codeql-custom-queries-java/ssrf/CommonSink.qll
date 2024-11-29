import java
import semmle.code.java.dataflow.DataFlow
import CommonMethod
import interface.SSRFSink


abstract class CommonSink extends SSRFSink {
}
/**
 * java.net.URL openConnection
 */
class JDKSink extends CommonSink {
  JDKSink() {
    exists(MethodAccess methodAccess |
      methodAccess.getMethod() instanceof URLMethod and
      this.asExpr() = methodAccess
    )
  }
  override string getSinkType() { result = "JDK" }
}

/**
 * org.apache.commons.httpclient.HttpClient executeMethod
 */
class ApacheSink extends CommonSink {
  ApacheSink() {
    exists(MethodAccess methodAccess |
      methodAccess.getMethod() instanceof HttpClientExecuteMethod and
      this.asExpr() = methodAccess.getArgument(0)
    )
  }
  override string getSinkType() { result = "apache" }
}

/**
 * org.springframework.web.client.RestTemplate 
 * 
 * headForHeaders 
 * postForLocation
 * postForObject
 * postForEntity
 * patchForObject
 * delete
 * optionsForAllow
 * exchange
 */
class SpringSink extends CommonSink {
  SpringSink() {
    exists(MethodAccess methodAccess |
      methodAccess.getMethod() instanceof RestTemplateMethod and
      this.asExpr() = methodAccess.getAnArgument()
    )
  }
  override string getSinkType() { result = "Spring" }
}