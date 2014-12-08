import DS from 'ember-data'

Organization = DS.Model.extend
  name        : attr 'string'
  description : attr 'string'
  website     : attr 'string'
  phone       : attr 'string'
  isActive    : attr 'boolean'

export default Organization
