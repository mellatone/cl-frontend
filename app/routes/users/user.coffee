import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

UserRoute = Ember.Route.extend AuthenticatedRouteMixin

export default UserRoute
