Meteor.startup ->
  common.counter.subscribe()

Template.hello.helpers counter: ->
  common.counter.count()

Template.hello.events "click button": ->
  common.counter.increment()
