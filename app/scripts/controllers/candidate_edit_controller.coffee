Hirelogiq.CandidateEditController = Ember.ObjectController.extend
  actions:
    save: ->
      @get("model").save()
      @transitionToRoute 'candidate', @get('model')

    delete: ->
      candidate = @get("model")
      candidate.deleteRecord()
      candidate.save()
      @transitionToRoute 'candidates'
