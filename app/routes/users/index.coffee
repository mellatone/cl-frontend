import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

UserIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    # Build query parameters.
    params = {}
    params.context = @get 'session.context' ? {}

    # GET objects.
    @store.find 'user', params

export default UserIndexRoute
