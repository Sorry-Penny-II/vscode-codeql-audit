import java

/**
 * ===========================================JDK===========================================
 */
abstract class JDKMethod extends Method {}
// java.net.URL
class URLMethod extends JDKMethod {
  URLMethod() {
    this.getDeclaringType().hasQualifiedName("java.net", "URL")
    and 
    this.getName() = "openConnection"
  }
}
/**
 * ===========================================apache===========================================
 */
abstract class ApacheMethod extends Method {}
// org.apache.commons.httpclient.HttpClient executeMethod
class HttpClientExecuteMethod extends Method {
  HttpClientExecuteMethod() {
    this.getDeclaringType().hasQualifiedName("org.apache.commons.httpclient", "HttpClient")
    and 
    this.getName() = "executeMethod"
  }
}
/**
 * ===========================================Spring===========================================
 */
abstract class RestTemplateMethod extends Method {}
// org.springframework.web.client.RestTemplate
class RestTemplateHeadForHeadersMethod extends RestTemplateMethod {
  RestTemplateHeadForHeadersMethod() {
    this.getDeclaringType().hasQualifiedName("org.springframework.web.client", "RestTemplate")
    and 
    this.getName() = "headForHeaders"
  }
}
class RestTemplatePostForLocationMethod extends RestTemplateMethod {
  RestTemplatePostForLocationMethod() {
    this.getDeclaringType().hasQualifiedName("org.springframework.web.client", "RestTemplate")
    and 
    this.getName() = "postForLocation"
  }
}
class RestTemplatePostForObjectMethod extends RestTemplateMethod {
  RestTemplatePostForObjectMethod() {
    this.getDeclaringType().hasQualifiedName("org.springframework.web.client", "RestTemplate")
    and 
    this.getName() = "postForObject"
  }
}
class RestTemplatePostForEntityMethod extends RestTemplateMethod {
  RestTemplatePostForEntityMethod() {
    this.getDeclaringType().hasQualifiedName("org.springframework.web.client", "RestTemplate")
    and 
    this.getName() = "postForEntity"
  }
}
class RestTemplatePatchForObjectMethod extends RestTemplateMethod {
  RestTemplatePatchForObjectMethod() {
    this.getDeclaringType().hasQualifiedName("org.springframework.web.client", "RestTemplate")
    and 
    this.getName() = "patchForObject"
  }
}
class RestTemplateDeleteMethod extends RestTemplateMethod {
  RestTemplateDeleteMethod() {
    this.getDeclaringType().hasQualifiedName("org.springframework.web.client", "RestTemplate")
    and 
    this.getName() = "delete"
  }
}
class RestTemplateOptionsForAllowMethod extends RestTemplateMethod {
  RestTemplateOptionsForAllowMethod() {
    this.getDeclaringType().hasQualifiedName("org.springframework.web.client", "RestTemplate")
    and 
    this.getName() = "optionsForAllow"
  }
}
class RestTemplateExchangeMethod extends RestTemplateMethod {
  RestTemplateExchangeMethod() {
    this.getDeclaringType().hasQualifiedName("org.springframework.web.client", "RestTemplate")
    and 
    this.getName() = "exchange"
  }
}