import Ember from 'ember'

EngagementsEngagementController = Ember.Controller.extend
  duration: (->
    new Date(@model.get('duration') * 1000).getSeconds()
  ).property()

export default EngagementsEngagementController
