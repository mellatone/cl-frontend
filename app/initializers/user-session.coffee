import Ember from 'ember'
import Session from 'simple-auth/session'

# Set the current user on the session.
UserSession = Session.extend
  user: (->
    userId = @get 'id'
    unless Ember.isEmpty userId
      @container.lookup('store:main').find('user', userId)
    ).property 'id'

# Takes two parameters: container and app
initialize = (container, app) ->
  container.register 'session:usersession', UserSession

UserSessionInitializer =
  name: 'user-session'
  before: 'simple-auth'
  initialize: initialize

export default UserSessionInitializer
