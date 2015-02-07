import DS from 'ember-data'

Program = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  author: DS.belongsTo 'user', async: true
  items: DS.hasMany 'roadmapItem', async: true

export default Program
