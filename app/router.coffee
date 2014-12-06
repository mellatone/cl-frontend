import Ember from 'ember'
import config from './config/environment'

Router = Ember.Router.extend
  location: config.locationType

Router.map ->
  @resource 'todos', path: '/'
  @resource 'organizations', ->
    @route 'organization', path: '/organization/:id'

export default Router
