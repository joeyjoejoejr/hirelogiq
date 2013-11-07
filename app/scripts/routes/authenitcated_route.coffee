Hirelogiq.AuthenticatedRoute = Ember.Route.extend
  beforeModel: (transition) ->
    if !localStorage.token
      @controllerFor('login').set 'model', { transition }
      @transitionTo 'login'
