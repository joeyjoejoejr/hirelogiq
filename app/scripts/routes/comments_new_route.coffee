Hirelogiq.CommentsNewRoute = Ember.Route.extend
  model: ->
    comment = @store.createRecord 'comment'
    @modelFor('candidate').get("comments").pushObject comment

