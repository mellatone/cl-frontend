import Ember from 'ember'
import config from './config/environment'

Router = Ember.Router.extend
  location: config.locationType

Router.map ->

  # Auth routes
  @route 'login'
  @route 'signup'
  
  # Organization routes
  @resource 'organizations', ->
    @route 'organization', path: '/:organization_id'

  # User routes
  @resource 'users', path: '/people', ->
    @resource 'user', path: '/:user_id', ->

      # User profile
      @resource 'profiles', path: '/profile', ->
        @route 'edit'

  # 404
  @route '404', path: '/*wildcard'

export default Router
