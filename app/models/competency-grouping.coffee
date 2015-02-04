import DS from 'ember-data'

CompetencyGrouping = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  libraries: DS.hasMany 'competencyLibrary', async: true

export default CompetencyGrouping
