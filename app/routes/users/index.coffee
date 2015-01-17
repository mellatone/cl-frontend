import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

UserIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    # Build query parameters.
    params = {}
    context = @get 'session.context'
    params.context = if context then context else {}

    # GET objects.
    @store.find 'user', params

export default UserIndexRoute
