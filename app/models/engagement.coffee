import DS from 'ember-data'

Engagement = DS.Model.extend
  name: DS.attr 'string'
  coach: DS.belongsTo 'user', async: true
  coachee: DS.belongsTo 'user', async: true
  manager: DS.belongsTo 'user', async: true
  participations: DS.hasMany 'participation', async: true
  participantCount: DS.attr 'string'
  created: DS.attr 'string'
  updated: DS.attr 'string'
  startDate: DS.attr 'string'
  endDate: DS.attr 'string'
  duration: DS.attr 'string'
  status: DS.attr 'string'
  isPublished: DS.attr 'boolean'

export default Engagement
