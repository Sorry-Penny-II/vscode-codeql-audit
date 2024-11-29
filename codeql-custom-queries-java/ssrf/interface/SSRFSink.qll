import java
import semmle.code.java.dataflow.DataFlow

abstract class SSRFSink extends DataFlow::Node {
    abstract string getSinkType();
}