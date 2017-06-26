package org.muml.psm.allocation.context.muml.algorithm.tests

import java.util.Collection
import org.junit.runner.RunWith
import org.junit.runners.Parameterized
import org.junit.runners.Parameterized.Parameters
import org.muml.psm.allocation.context.muml.tests.MUMLOCLContextBasedAlgorithmTest

@RunWith(value = typeof(Parameterized))
class LPSolveBasedAlgorithmTest extends MUMLOCLContextBasedAlgorithmTest {

	new(String expectedURI, String transformationURI, String aslURI, String cicURI, String hwpicURI) {
		super(expectedURI, transformationURI, aslURI, cicURI, hwpicURI)
	}
	
	@Parameters
	def static Collection<Object[]> getTestData() {
		getTestData(
			"platform:/plugin/org.muml.psm.allocation.algorithm.ilp.lpsolve/transforms/LPSolveBasedAlgorithm.qvto"
		)
	}

}