Hirelogiq.CommentsNewController = Ember.ObjectController.extend
  actions:
    save: ->
      @get('model').save()
      @transitionToRoute 'candidate'

    close: ->
      @transitionToRoute 'candidate'
