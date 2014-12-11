import DS from 'ember-data'

attr = DS.attr
belongsTo = DS.belongsTo

Profile = DS.Model.extend
  nickname  : attr 'string'
  user      : belongsTo 'user', async: true

export default Profile
