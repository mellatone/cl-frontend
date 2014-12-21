import Ember from 'ember'

SignupRoute = Ember.Route.extend
  actions:
    registerUser: (data)->
      data =
        'type'     : 'public'
        'email'    : @controller.email
        'firstName': @controller.firstName
        'lastName' : @controller.lastName
        'password' : @controller.password
      
      request = Ember.$.ajax
        url : @config.urls.register
        type: 'POST'
        data: data

      request.done (response)=>
        log 'Registered new user.'

        # Create record for new user.
        @store.pushPayload 'user', response

        # Redirect to login page.
        @transitionTo 'login'

      request.fail =>
        log 'Failed to register new user.'

export default SignupRoute
