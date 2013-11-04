Hirelogiq.LoginController = Ember.ObjectController.extend
  reset: ->
    @setProperties
      email: ""
      password: ""
      loginErrors: ""

  token: localStorage.token

  logout: ->
    localStorage.token = ''
    @set "token", localStorage.token

  actions:
    login: ->
      if @get("email") == "admin@hirelogiq.com" and @get("password") == "foobar"
        localStorage.token = "1234567890"
        @set "token", localStorage.token
        @transitionToRoute "candidates"
      else
        @set "loginErrors", "Invalid Username or Password"
        @set "password", ""
