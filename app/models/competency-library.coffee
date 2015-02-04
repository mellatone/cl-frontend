import DS from 'ember-data'

CompetencyLibrary = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  grouping: DS.belongsTo 'competencyGrouping', async: true
  organization: DS.belongsTo 'organization', async: true
  competencies: DS.hasMany 'competency', async: true

export default CompetencyLibrary
