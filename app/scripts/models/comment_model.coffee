Hirelogiq.Comment = DS.Model.extend
  body: DS.attr 'string'
  candidate: DS.belongsTo 'candidate'

Hirelogiq.Comment.FIXTURES = [
    id: 1
    candidate_id: 2
    body: "This guys looks amazing, we should hire him"
  ,
    id: 2
    candidate_id: 2
    body: "What is your favorite color?"
]
