import Ember from 'ember'

ApplicationController = Ember.Controller.extend
  selectedContext: Ember.computed.alias 'session.context'
  onSelectedContextChange: (->
    @send 'contextChanged'
  ).observes 'selectedContext'

export default ApplicationController
