Hirelogiq.Candidate = DS.Model.extend
    name: DS.attr 'string'
    email: DS.attr 'string'
    githubUserName: DS.attr 'string'
    avatarUrl: DS.attr 'string'
    comments: DS.hasMany 'comment', async: true
    githubLink: (->
      "http://github.com/#{@get "githubUserName"}"
    ).property "githubUserName"

Hirelogiq.Candidate.FIXTURES = [
    id: 2
    name: 'Joseph Jackson'
    email: 'cpmhjoe@gmail.com'
    githubUserName: 'joeyjoejoejr'
    avatarUrl: 'https://1.gravatar.com/avatar/e84a9a83a093a541b02b1e9d8fc7b23d?d=https%3A%2F%2Fidenticons.github.com%2F6de6ab1ca3fa82e5312340bf2609a567.png&r=x'
    comments: ["1", "2"]
  ,
    id: 54,
    name: 'Eva McEvil'
    email: 'darkprince@hell.gov'
]
