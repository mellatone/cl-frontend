import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

OrganizationsOrganizationRoute = Ember.Route.extend AuthenticatedRouteMixin,
  model: (params, transition)->
    # TODO: research how to get params in nested resource.
    params.slug = transition.params['organizations.organization'].slug
    @store.find 'organization', params.slug

export default OrganizationsOrganizationRoute
