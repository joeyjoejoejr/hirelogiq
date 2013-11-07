Hirelogiq.IndexRoute = Hirelogiq.AuthenticatedRoute.extend
  redirect: ->
    @transitionTo("candidates")
