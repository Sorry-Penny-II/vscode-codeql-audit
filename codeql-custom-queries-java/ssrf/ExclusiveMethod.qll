import java


/**
 * ===========================================WEAVER===========================================
 */
abstract class WeaverMethod extends Method {}
// com.weaver.teams.util.HttpUtils httpJsonPost
class EteamsCommonHttpUtilsHttpJsonPostMethod extends Method {
  EteamsCommonHttpUtilsHttpJsonPostMethod() {
    this.getDeclaringType().hasQualifiedName("com.weaver.teams.util", "HttpUtils") and
    this.getName() = "httpJsonPost"
  }
}