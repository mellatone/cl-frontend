import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

OrganizationRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: (params)->
    # GET objects.
    @store.find 'organization', params.slug

export default OrganizationRoute
