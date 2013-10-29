Hirelogiq.CandidatesNewController = Ember.ObjectController.extend
  validEmail: (->
    /^\S+@\S+\.\S+$/.test @get("email")
  ).property "email"

  actions:
    save: ->
      @get("model").save()
      @transitionToRoute 'candidates'

    close: (e) ->
      @get("model").deleteRecord()
      @transitionToRoute 'candidates'
