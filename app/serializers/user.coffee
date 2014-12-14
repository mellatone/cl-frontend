import DS from 'ember-data'

UserSerializer = DS.ActiveModelSerializer.extend(DS.EmbeddedRecordsMixin).extend
  attrs:
    profile: serialize: 'records', deserialize: 'records'

export default UserSerializer
