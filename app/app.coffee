import Ember from 'ember'
import DS from 'ember-data'
import Resolver from 'ember/resolver'
import loadInitializers from 'ember/load-initializers'
import config from './config/environment'

Ember.MODEL_FACTORY_INJECTIONS = true

App = Ember.Application.extend
  modulePrefix: config.modulePrefix
  podModulePrefix: config.podModulePrefix
  Resolver: Resolver

  # Only for debug.
  LOG_TRANSITIONS: true
  LOG_TRANSITIONS_INTERNAL: true

loadInitializers(App, config.modulePrefix)

# Set logger shortcut.
window.log = Ember.Logger.log

export default App
