import Ember from 'ember'

EngagementsEngagementController = Ember.Controller.extend
  duration: (->
    date = new Date(@model.get('duration') * 1000)
    date.getMonth() + ' months, ' + date.getDay() + ' days, ' + date.getHours() + ' hours, ' + date.getSeconds() + ' seconds'
  ).property()

export default EngagementsEngagementController
