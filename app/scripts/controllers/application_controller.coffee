Hirelogiq.ApplicationController = Ember.ObjectController.extend
  needs: "login"
  loginBinding: "controllers.login"

  isLoggedIn: Ember.computed.alias "login.token"

  actions:
    logout: ->
      @get("login").logout()
      @transitionToRoute "login"
