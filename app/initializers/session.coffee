import Ember from 'ember'
import Session from 'simple-auth/session'

# Set the current user and default context on the session.
UserSession = Session.extend
  context: null
  user: (->
    token = @get 'token'
     
    unless Ember.isEmpty token
      # Get the part of the token where data is stored.
      token = token.split('.')[1]

      # Make URL friendly.
      token = token.replace(/\+/g, '-').replace(/\//g, '_').replace(/\=+$/, '')

      # Reverse to original encoding.
      if token.length % 4 isnt 0
        token += ('===').slice(0, 4 - (token.length % 4))

      token = token.replace(/-/g, '+').replace(/_/g, '/')

      # Decode back to original payload.
      token = JSON.parse(atob(token))

      # Look up the user.
      @container.lookup('store:main').find('user', token.user).then (response)=>
        # Set the current User on the session.
        @set 'user', response.get 'data'

        # Set the context on the session for easy access.
        @set 'context', response.get('data').defaultContext.get('id')
    ).property 'token'

# Takes two parameters: container and app
initialize = (container, app) ->
  container.register 'session:usersession', UserSession


UserSessionInitializer =
  name: 'session'
  before: 'simple-auth'
  initialize: initialize

export default UserSessionInitializer
