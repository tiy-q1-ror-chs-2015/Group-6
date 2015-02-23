var StateView = Backbone.View.extend({
  initialize: function() {
    console.log('hello');
  }




});

var StatesView = Backbone.View.extend({
  initialize: function() {
    console.log("im defined!");
    this.render();
    $('.container').append(this.el);
  },

  render: function() {
    this.addAll();
    return this;
  },
  addOne: function(stateModel) {
    var stateView = new StateView({model: stateModel});
    this.$el.append(stateView.render().el);
  },
  addAll:function() {
    _.each(this.collection.models, this.addOne, this);
  }
});

var testView = Backbone.View.extend({
  el: $('.container'),
  initialize: function() {
    this.render();
  },
  render: function() {
    this.$el.html("<h1> hi this is cool</h1>");
    return this;
  }
});

