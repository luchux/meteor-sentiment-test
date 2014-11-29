Meteor.methods
    analyze: (phrase) ->
      console.log phrase
      Sentiment = Meteor.npmRequire('sentiment')
      r1 = Sentiment(phrase);
      _.extend(r1, {'phrase': phrase, 'created_at': Date.now() })
      console.log r1
      console.log 'inserting in db'
      Analyzed.insert(r1)