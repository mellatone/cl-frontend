import Ember from 'ember'
# import config from '../../config/environment'

# Global variables.
globals = Ember.Object.extend
  urls:
    # register: config.namespace.join('/auth/register/')
    register: 'api/v1/auth/register'

# Takes two parameters: container and app
initialize = (container, app) ->
  container.typeInjection 'component', 'store', 'store:main'
  app.register 'global:variables', globals, singleton: true
  app.inject 'controller', 'globals', 'global:variables'

GlobalsInitializer =
  name: 'globals'
  initialize: initialize

export default GlobalsInitializer
