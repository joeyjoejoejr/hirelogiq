Hirelogiq.CandidatesRoute = Hirelogiq.AuthenticatedRoute.extend
  model: ->
    @get('store').find 'candidate'

