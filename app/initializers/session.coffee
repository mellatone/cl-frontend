import Ember from 'ember'
import Session from 'simple-auth/session'

# Set the current user and default context on the session.
UserSession = Session.extend
  context: (->
    user = @get 'user'
    if user then user.defaultContext else null
  ).property 'user'

# Takes two parameters: container and app
initialize = (container, app) ->
  container.register 'session:usersession', UserSession


UserSessionInitializer =
  name: 'session'
  before: 'simple-auth'
  initialize: initialize

export default UserSessionInitializer
