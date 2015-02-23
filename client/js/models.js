var State = Backbone.Model.extend({
  urlRoot: 'http://localhost:9000/states',
  defaults: function() {
    return {
      name: 'State',
    };
  },
  initialize: function() {
    console.log("state has been initialized!");
  },
  toJSON: function() {
    return {student: this.attributes};
  }
});