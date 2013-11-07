Hirelogiq.CandidatesNewRoute = Hirelogiq.AuthenticatedRoute.extend
  model: ->
    @store.createRecord 'candidate', {}
