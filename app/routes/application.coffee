import Ember from 'ember'
import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'

ApplicationRoute = Ember.Route.extend ApplicationRouteMixin,
  actions:
    error: (error, transition)->
      # Application level error redirecting.
      if error and error.status == 404
        @transitionTo '/404'

export default ApplicationRoute
