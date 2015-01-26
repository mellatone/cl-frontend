import DS from 'ember-data'

Participation = DS.Model.extend
  engagement: DS.belongsTo 'engagement', async: true
  user: DS.belongsTo 'user', async: true
  role: DS.belongsTo 'role', async: true

export default Participation
