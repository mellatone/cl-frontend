import DS from 'ember-data'

Organization = DS.Model.extend
  name: DS.attr 'string'
  slug: DS.attr 'string'
  description: DS.attr 'string'
  website: DS.attr 'string'
  phone: DS.attr 'string'
  isActive: DS.attr 'boolean'

export default Organization
