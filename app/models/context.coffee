import DS from 'ember-data'

Context = DS.Model.extend
  user: DS.belongsTo 'user'

export default Context
