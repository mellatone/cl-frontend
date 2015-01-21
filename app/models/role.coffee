import DS from 'ember-data'

Role = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  contexts: DS.hasMany 'context', async: true

export default Role
