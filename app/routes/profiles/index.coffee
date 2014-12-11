import Ember from 'ember'
import AuthenticatedRouteMixin from 'simple-auth/mixins/authenticated-route-mixin'

export default Ember.Route.extend AuthenticatedRouteMixin,
  model: (params)->
    @store.find('profile', @modelFor('user').id).then (obj)->
      obj.get('profile')
