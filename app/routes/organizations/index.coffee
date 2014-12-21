import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

OrganizationIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    @store.find 'organization'

export default OrganizationIndexRoute
