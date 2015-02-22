  var AppRouter = Backbone.Router.extend({
    initialize: function() {
    },
    routes: {
      'state': 'state'
      'test': 'test'
    },
    state: function() {
      this.loadView(new StateView({model: {name:'California'}}));
    },
    test: function() {
      this.loadView(new testView(model:{name: 'California'}}));
    },
    loadView: function (view) {
      this.view && this.view.remove();
      this.view = view;
    }
  })
    Backbone.history.start();
  });
