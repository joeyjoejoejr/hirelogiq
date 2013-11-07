Hirelogiq.LoginRoute = Ember.Route.extend
  model: ->
    {}

  setupController: (controller, model) ->
    controller.set 'model', model
    controller.reset()
