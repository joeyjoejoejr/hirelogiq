Hirelogiq.CommentsNewRoute = Hirelogiq.AuthenticatedRoute.extend
  model: ->
    comment = @store.createRecord 'comment'
    @modelFor('candidate').get("comments").pushObject comment

