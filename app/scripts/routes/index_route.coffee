Hirelogiq.IndexRoute = Ember.Route.extend
  redirect: ->
    @transitionTo("candidates")
