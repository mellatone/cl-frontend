import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

OrganizationIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    # Build query parameters.
    params = {}
    params.context = @session.context ? {}

    # GET objects.
    @store.find 'organization', params

export default OrganizationIndexRoute
