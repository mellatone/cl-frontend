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

loadInitializers(App, config.modulePrefix)

window.log = Ember.Logger.log
window.attr = DS.attr

export default App
