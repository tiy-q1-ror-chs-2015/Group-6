var AppRouter = Backbone.Router.extend({
  initialize: function() {
    console.log("routes have started");
  },
  routes: {
    '': 'home',
    'test': 'testRoute',
  },

  home: function() {
    var self = this;
    var state = new StateCollection();
    state.fetch().then(function() {
      self.loadView(new StatesView({collection: state}));
    });
  },

  loadView: function(view) {
    this.view && this.view.remove();
    this.view = view;
  },

  testRoute: function() {
    this.loadView(new testView());
    this.view.render();
  },

});