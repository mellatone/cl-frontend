import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

UserRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: (params)->
    @store.find 'user', params.username

export default UserRoute
