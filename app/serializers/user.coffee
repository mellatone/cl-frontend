import DS from 'ember-data'

UserSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin).extend
  attrs:
    profile: embedded: 'always'

export default UserSerializer
