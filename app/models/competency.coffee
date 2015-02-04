import DS from 'ember-data'

Competency = DS.Model.extend
  name: DS.attr 'string'
  description: DS.attr 'string'
  library: DS.belongsTo 'competencyLibrary', async: true

export default Competency
