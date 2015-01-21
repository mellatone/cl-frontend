import Ember from 'ember'
import ApplicationRouteMixin from 'simple-auth/mixins/application-route-mixin'

ApplicationRoute = Ember.Route.extend ApplicationRouteMixin,
  model: ->
    # Attach the logged in User here to make available throughout the app.
    if @session.isAuthenticated
      @store.find 'user', @get 'session.user.username'

  actions:
    contextChanged: ->
      @refresh()

    error: (error, transition)->
      # Application level error redirecting.
      if error and error.status == 404
        @transitionTo '/404'

export default ApplicationRoute
