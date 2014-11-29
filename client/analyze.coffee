Meteor.subscribe "lastPhrases"
Template.Analyzed.helpers
    phrases: () ->
        Analyzed.find({}, {sort: {created_at: -1}})

Template.NewPhrase.events
  'click #submit': (evt, template) ->
    console.log 'clicked submit'
    evt.preventDefault()

    Meteor.call 'analyze', template.$('#phrase').val(), (error, success) ->
      if error
        console.log 'error', error
      else
        console.log 'success'
