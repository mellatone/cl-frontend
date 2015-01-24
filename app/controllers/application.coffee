import Ember from 'ember'

ApplicationController = Ember.Controller.extend

  # The following define the Ember.Select for user context in
  # the application template.
  defaultContext: ->
    @get 'session.context'
  selectedContext: Ember.computed.alias 'session.context'
  onSelectedContextChange: (->
    @send 'contextChanged'
  ).observes 'selectedContext'

export default ApplicationController
