import DS from 'ember-data'

RoadmapItem = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  roadmap: DS.belongsTo 'roadmap', async: true
  program: DS.belongsTo 'program', async: true
  estimatedStart: DS.attr 'string'
  estimatedFinish: DS.attr 'string'
  order: DS.attr 'string'

export default RoadmapItem
