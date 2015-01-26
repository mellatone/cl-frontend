import DS from 'ember-data'

Engagement = DS.Model.extend
  name: DS.attr 'string'
  coach: DS.attr 'string'
  coachee: DS.attr 'string'
  participations: DS.hasMany 'participation', async: true
  participantCount: DS.attr 'string'
  created: DS.attr 'string'
  updated: DS.attr 'string'
  startDate: DS.attr 'string'
  endDate: DS.attr 'string'
  status: DS.attr 'string'
  isPublished: DS.attr 'boolean'

export default Engagement
