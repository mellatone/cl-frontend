import DS from 'ember-data'

Competency = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  library: DS.belongsTo 'competencyLibrary', async: true
  indicators: DS.hasMany 'competencyIndicator', async: true

export default Competency
