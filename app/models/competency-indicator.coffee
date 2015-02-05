import DS from 'ember-data'

CompetencyIndicator = DS.Model.extend
  type: DS.attr 'string'
  description: DS.attr 'string'
  competency: DS.belongsTo 'competency', async: true
  symbol: (()->
    type = @get 'type'
    if parseInt(type) == 0 then 'glyphicon-plus' else 'glyphicon-minus'
  ).property 'type'
  

export default CompetencyIndicator
