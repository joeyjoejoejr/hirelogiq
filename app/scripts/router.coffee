Hirelogiq.Router.map ->
  @resource 'login'

  @resource 'candidates', ->
    @route 'new'

  @resource 'candidate', path: '/candidate/:candidate_id', ->
    @route 'edit'
    @resource 'comments', ->
      @route 'new'
