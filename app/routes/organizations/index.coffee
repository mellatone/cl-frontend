import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

OrganizationIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: (params)->
    # Build query parameters.
    context = @get 'session.context.id'
    params.context = if context then context else {}

    # GET objects.
    @store.find 'organization', params
 
export default OrganizationIndexRoute
