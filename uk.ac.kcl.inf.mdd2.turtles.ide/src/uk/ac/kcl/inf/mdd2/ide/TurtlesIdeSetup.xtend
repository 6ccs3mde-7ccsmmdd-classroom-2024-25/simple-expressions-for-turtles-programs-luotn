/*
 * generated by Xtext 2.37.0
 */
package uk.ac.kcl.inf.mdd2.ide

import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2
import uk.ac.kcl.inf.mdd2.TurtlesRuntimeModule
import uk.ac.kcl.inf.mdd2.TurtlesStandaloneSetup

/**
 * Initialization support for running Xtext languages as language servers.
 */
class TurtlesIdeSetup extends TurtlesStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new TurtlesRuntimeModule, new TurtlesIdeModule))
	}
	
}
