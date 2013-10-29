Hirelogiq.CandidatesNewRoute = Ember.Route.extend
  model: ->
    @store.createRecord 'candidate', {}
