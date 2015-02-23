var StateCollection = Backbone.Collection.extend({
  url: 'http://localhost:9000/states',
  model: State,
  initialize: function() {
    console.log("state collection");
  }
});