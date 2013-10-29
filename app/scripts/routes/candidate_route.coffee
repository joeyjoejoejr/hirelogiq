Hirelogiq.CandidateRoute = Ember.Route.extend
  model: (params) ->
    @store.find 'candidate', params.candidate_id

