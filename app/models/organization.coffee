import DS from 'ember-data'

Organization = DS.Model.extend
  name: DS.attr 'string'

export default Organization
