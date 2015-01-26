import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

EngagementIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: (params)->
    # Build query parameters.
    context = @get 'session.context.id'
    params.context = if context then context else {}

    # GET objects.
    @store.find 'engagement', params
 
export default EngagementIndexRoute
