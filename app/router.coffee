import Ember from 'ember'
import config from './config/environment'

Router = Ember.Router.extend
  location: config.locationType

Router.map ->

  # Auth routes
  @route 'login'
  @route 'protected'
  @route 'signup'
  @route 'invitation'
  
  # Organization routes
  @resource 'organization', path: '/organizations/:organization_id'

export default Router
