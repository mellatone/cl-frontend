import Ember from 'ember'
import config from './config/environment'

Router = Ember.Router.extend
  location: config.locationType

Router.map ->

  # Auth routes.
  @route 'login'
  @route 'signup'
  
  # Organization routes.
  @resource 'organizations', ->
    @route 'organization', path: '/:slug'
    @route 'edit', path: '/:slug/edit'

  # Engagement routes.
  @resource 'engagements', ->
    @route 'engagement', path: '/:engagement_id'
    @route 'edit', path: '/:engagement_id/edit'

  # User routes.
  @resource 'users', path: '/people', ->
    @route 'user', path: '/:username'
    @route 'edit', path: '/:username/edit'

  # Wildcard - Catch all unmatches routes.
  @route 'wildcard', path: '*wildcard'

export default Router
