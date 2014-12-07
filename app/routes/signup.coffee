import Ember from 'ember'

log = Ember.Logger.log

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
        url : 'api/v1/auth/register'
        type: 'POST'
        data: data

      request.done ->
        log('SUCCESS: Registered new user.')

      request.fail ->
        log('FAILED: Failed to register new user.')

export default SignupRoute
