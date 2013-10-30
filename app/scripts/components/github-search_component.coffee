Hirelogiq.GithubSearchComponent = Ember.Component.extend
  showResults: true

  keyPress: (_e) ->
    Ember.run.debounce @, @gitHubNameSearch, 500, @runNow

  focusIn: (_e) ->
    @set "showResults", true

  focusOut: (_e) ->
    Ember.run.later @, @set, "showResults", false, 300

  updateGitHubName: (result) ->
    @set "githubUserName", result.login
    @set "avatarUrl", result.avatar_url

  gitHubNameSearch: ->
    search = @get('githubUserName')
    $.ajax(
      headers:
        Accept: 'application/vnd.github.preview.text-match+json'
      dataType: 'json'
      url: "https://api.github.com/search/users?q=#{search}"
    )
    .done((data) =>
      Ember.run =>
        @set('results', data.items))
    .fail((data) => console.log(data))
