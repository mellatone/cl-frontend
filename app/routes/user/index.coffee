import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

UserIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: (params, transition)->
    # GET objects.
    @store.find 'user', transition.params.user.username

export default UserIndexRoute
