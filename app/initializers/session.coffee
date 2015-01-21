import Ember from 'ember'
import Session from 'simple-auth/session'

# Set the current user and default context on the session.
UserSession = Session.extend
  context: (->
    user = @get 'user'
    if user
      @container.lookup('store:main').find('context', user.defaultContext).then (context)=>
        @set 'context', context
  ).property()

# Takes two parameters: container and app
initialize = (container, app) ->
  container.register 'session:usersession', UserSession


UserSessionInitializer =
  name: 'session'
  before: 'simple-auth'
  initialize: initialize

export default UserSessionInitializer
