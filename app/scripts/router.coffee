Hirelogiq.Router.map ->
  @resource 'candidates', ->
    @route 'new'

  @resource 'candidate', path: '/candidate/:candidate_id', ->
    @route 'edit'
