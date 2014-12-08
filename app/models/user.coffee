import DS from 'ember-data'

attr = DS.attr

User = DS.Model.extend
  email      : attr 'string'
  firstName  : attr 'string'
  lastName   : attr 'string'
  middleName : attr 'string'
  isStaff    : attr 'boolean'
  isActive   : attr 'boolean'

export default User
