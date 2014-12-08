import Ember from 'ember'

export default Ember.Controller.extend
  fields: (->
    console.log @model
  ).property()
