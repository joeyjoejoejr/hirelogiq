Hirelogiq.CandidateRoute = Hirelogiq.AuthenticatedRoute.extend
  model: (params) ->
    @store.find 'candidate', params.candidate_id

