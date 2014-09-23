class Counter
  constructor: ->
    @collection_name = "count"
    @collection = new Mongo.Collection(@collection_name);
    @key = {_id: "count"}
    @inc_modifier = $inc: {count: 1}

  count: ->
    @collection.findOne(@key)?.count

  clear: ->
    @collection.remove(@key)
    @collection.insert({_id: "count", count: 0})

  increment: ->
    @collection.update(@key, @inc_modifier)

  subscribe: ->
    Meteor.subscribe @collection_name

  publish: ->
    Meteor.publish @collection_name, =>
      @collection.find {}

  startup: ->
    @clear() unless @count()
    @collection.allow update: (userId, doc, fields, modifier) =>
      userId and _.isEqual(modifier, @inc_modifier)

common.counter = new Counter()
