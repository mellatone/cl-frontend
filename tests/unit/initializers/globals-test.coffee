`import Ember from 'ember'`
`import { initialize } from 'cl-frontend/initializers/globals'`

container = null
application = null

module 'GlobalsInitializer',
  setup: ->
    Ember.run ->
      container = new Ember.Container()
      application = Ember.Application.create()
      application.deferReadiness()

# Replace this with your real tests.
test 'it works', ->
  initialize container, application

  # you would normally confirm the results of the initializer here
  ok true
