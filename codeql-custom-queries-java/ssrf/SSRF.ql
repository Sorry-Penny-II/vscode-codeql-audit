/**
 * @name SSRF
 * @description SSRF
 * @kind path-problem
 * @id SSRF
 * @tags
 */


import java
import semmle.code.java.dataflow.FlowSources
import DataFlow::PathGraph
import semmle.code.java.dataflow.DataFlow
import CommonSink
import ExclusiveSink
// import semmle.CommonStep.CommonStep


module  SSRFConfig implements DataFlow::ConfigSig {
    SSRFConfig() { this = "SSRF" }
    
    predicate isSource(DataFlow::Node source) { source instanceof RemoteFlowSource }

    predicate isSanitizer(DataFlow::Node node) {
      node.getType() instanceof PrimitiveType or
      node.getType() instanceof BoxedType or
      node.getType() instanceof NumberType
    }
    
    predicate isSink(DataFlow::Node sink) {
       sink instanceof CommonSink or 
       sink instanceof ExclusiveSink
    }

    // override predicate isAdditionalTaintStep(DataFlow::Node node1, DataFlow::Node node2) {
    //     commonStep(node1.asExpr(), node2.asExpr())
    // }
}

from DataFlow::PathNode source, DataFlow::PathNode sink, SSRFConfig conf
where conf.hasFlowPath(source, sink)
select sink.getNode(), source, sink, ((SSRFSink)sink.getNode()).getSinkType() + " : " + source.getNode().toString()+","+source.getNode().getLocation().getStartColumn()+","+ source.getNode().getEnclosingCallable().getName()+","+ source.getNode().getLocation().getFile().getRelativePath()+","+ sink.getNode().toString()+","+sink.getNode().getLocation().getStartColumn()+","+ sink.getNode().getEnclosingCallable().getName()+","+ sink.getNode().getLocation().getFile().getRelativePath()
