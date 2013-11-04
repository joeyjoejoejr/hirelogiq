Hirelogiq.LoginRoute = Ember.Route.extend
  setupController: (controller, context) ->
    controller.set 'content', {}
    controller.reset()
