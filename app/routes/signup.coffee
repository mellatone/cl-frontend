import Ember from 'ember'

SignupRoute = Ember.Route.extend
  actions:
    registerUser: (data)->
      console.log(@)
      request = Ember.$.ajax
        url: '/api/v1/auth/register'
        type: 'POST'


export default SignupRoute
