import DS from 'ember-data'

Roadmap = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  objective: DS.attr 'string'
  items: DS.hasMany 'roadmapItem', async: true

export default Roadmap
