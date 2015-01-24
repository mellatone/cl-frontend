import Ember from 'ember'
import Session from 'simple-auth/session'


UserSession = Session.extend
  # Here we set the 'session.context' property which is used for 
  # filtering the User contexts throughout the site.
  context: (->
    user = @get 'user'

    # Check for a defaultContext and use that otherwise use empty.
    if user and user.defaultContext
      @container.lookup('store:main')
                .find('context', user.defaultContext)
                .then (context)=>
        @set 'context', context
    else
      @container.lookup('store:main').createRecord 'context'
  ).property 'user'

# Takes two parameters: container and app
initialize = (container, app) ->
  container.register 'session:usersession', UserSession


UserSessionInitializer =
  name: 'session'
  before: 'simple-auth'
  initialize: initialize

export default UserSessionInitializer
