import DS from 'ember-data'

attr = DS.attr
belongsTo = DS.belongsTo

User = DS.Model.extend
  email      : attr 'string'
  firstName  : attr 'string'
  lastName   : attr 'string'
  middleName : attr 'string'
  isStaff    : attr 'boolean'
  isActive   : attr 'boolean'
  profile    : belongsTo 'profile', async: true

export default User
