Hirelogiq.CandidatesRoute = Ember.Route.extend
  model: ->
    @get('store').find 'candidate'

