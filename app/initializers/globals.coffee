import Ember from 'ember'
# import config from '../../config/environment'

# Global variables
# ----------------
# Include any urls that can be set in one place here and changed if
# needed in the future. They are here for easier reference throughout
# the application. Other data may be added as needed.
globals = Ember.Object.extend
  urls:
    register: 'api/v1/auth/register'

# Takes two parameters: container and app
initialize = (container, app) ->
  app.register 'global:config', globals, singleton: true
    
  Ember.A(['route', 'controller', 'view']).forEach (place)->
    app.inject place, 'config', 'global:config'

GlobalsInitializer =
  name: 'globals'
  initialize: initialize

export default GlobalsInitializer
