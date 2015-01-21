import DS from 'ember-data'

Context = DS.Model.extend
  user: DS.belongsTo 'user', async: true
  role: DS.belongsTo 'role', async: true

export default Context
