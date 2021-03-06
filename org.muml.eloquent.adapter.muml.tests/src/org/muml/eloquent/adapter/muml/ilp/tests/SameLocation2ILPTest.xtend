package org.muml.eloquent.adapter.muml.ilp.tests

import java.util.Collection
import org.junit.runner.RunWith
import org.junit.runners.Parameterized
import org.junit.runners.Parameterized.Parameters
import org.muml.eloquent.adapter.muml.tests.MUMLOCLContextBasedTest

@RunWith(value = typeof(Parameterized))
class SameLocation2ILPTest extends MUMLOCLContextBasedTest {
	public static final String uriPrefix = "platform:/plugin/org.muml.eloquent.adapter.muml.tests/fixtures/ilp/sameLocationConstraint/"
	
	new(String expectedURI, String transformationURI, String aslURI, String cicURI, String hwpicURI) {
		super(expectedURI, transformationURI, aslURI, cicURI, hwpicURI)
	}
	
	@Parameters
	def static Collection<Object[]> getTestData() {
		#[
			// atomic component instances only
			#[uriPrefix + "locationConstraintSimple.lp",
			  "platform:/plugin/org.muml.psm.allocation.algorithm.ilp/transforms/Specification2ILP.qvto",
			  uriPrefix + "locationConstraintSimple.allocation_specification",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.1/@modelElements.0",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.8/@modelElements.0/@hwplatformInstances.0/@embeddedHPIC"],
			// collocation keyword
			#[uriPrefix + "locationConstraintSimple.lp",
			  "platform:/plugin/org.muml.psm.allocation.algorithm.ilp/transforms/Specification2ILP.qvto",
			  uriPrefix + "collocationConstraintSimple.allocation_specification",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.1/@modelElements.0",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.8/@modelElements.0/@hwplatformInstances.0/@embeddedHPIC"],
			// change the preamble order (basically the same as above)
			#[uriPrefix + "locationConstraintSimple.lp",
			  "platform:/plugin/org.muml.psm.allocation.algorithm.ilp/transforms/Specification2ILP.qvto",
			  uriPrefix + "collocationConstraintPreambleOrder.allocation_specification",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.1/@modelElements.0",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.8/@modelElements.0/@hwplatformInstances.0/@embeddedHPIC"],
			// two sameLocation constraints (only one embedded component instance)
			#[uriPrefix + "locationConstraintStructured.lp",
			  "platform:/plugin/org.muml.psm.allocation.algorithm.ilp/transforms/Specification2ILP.qvto",
			  uriPrefix + "locationConstraintStructured.allocation_specification",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.1/@modelElements.1",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.8/@modelElements.0/@hwplatformInstances.0/@embeddedHPIC"],
			// two embedded component instances
			#[uriPrefix + "locationConstraintStructuredTwoEmbedded.lp",
			  "platform:/plugin/org.muml.psm.allocation.algorithm.ilp/transforms/Specification2ILP.qvto",
			  uriPrefix + "locationConstraintStructured.allocation_specification",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.1/@modelElements.4",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.8/@modelElements.0/@hwplatformInstances.0/@embeddedHPIC"],
			// same as above but the order of the cartesian product changed (results in the _same_ ilp)
			#[uriPrefix + "locationConstraintStructuredTwoEmbedded.lp",
			  "platform:/plugin/org.muml.psm.allocation.algorithm.ilp/transforms/Specification2ILP.qvto",
			  uriPrefix + "locationConstraintStructuredTwoEmbeddedOrder.allocation_specification",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.1/@modelElements.4",
			  GeneralConstraint2ILPTest.modelsDirectory + "simple.fujaba#//@categories.8/@modelElements.0/@hwplatformInstances.0/@embeddedHPIC"]
		]
	}

}
