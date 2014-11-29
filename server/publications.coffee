Meteor.publish 'lastPhrases', () ->
    Analyzed.find({}, {limit: 15, sort:{created_at: -1}})