Hirelogiq.HlFormComponent = Ember.Component.extend
  tagName: "form"

  keyUp: (e) ->
    @sendAction('escape') if e.keyCode == 27

  didInsertElement: ->
    @.$().find('input:first-child').focus()
