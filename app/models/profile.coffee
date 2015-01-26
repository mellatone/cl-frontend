import DS from 'ember-data'

Profile = DS.Model.extend
  nickname: DS.attr 'string'
  user: DS.belongsTo 'user', async: true

export default Profile
