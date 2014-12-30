import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

OrganizationIndexRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: ->
    context = @session.get('user').get('defaultContext').get('id')
    @store.find 'organization', context: context

export default OrganizationIndexRoute
