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
    @route 'organization', path: '/:slug'

  # User routes
  @resource 'users', path: '/people', ->
    @route 'user', path: '/:username'

  # Wildcard - Catch all unmatches routes.
  @route 'wildcard', path: '*wildcard'

export default Router
