import DS from 'ember-data'

User = DS.Model.extend
  email: DS.attr 'string'
  username: DS.attr 'string'
  firstName: DS.attr 'string'
  lastName: DS.attr 'string'
  middleName: DS.attr 'string'
  fullName: DS.attr 'string'
  isStaff: DS.attr 'boolean'
  isActive: DS.attr 'boolean'
  lastLogin: DS.attr 'string'
  created: DS.attr 'string'
  defaultContext: DS.belongsTo 'context', async: true
  permissions: DS.attr 'array'
  contexts: DS.hasMany 'context', async: true, inverse: 'user'
  profile: DS.belongsTo 'profile', async: true

export default User
