//Model View
  var StateView = Backbone.View.extend({
    tagName: 'article'
    template:_.template($('#stateTmpl').text())
    events: {
      "click button": "showState"
    },
    initialize: function() {
      console.log('state view is made');
    },
    render: function() {
    var markup = this.template(this.model.toJSON());
    this.$el.html(markup);
    return this
  },

  });

  //collection view
  //do iterration and render to the page
  var StatesView = Backbone.View.extend({
    el:$('.container'),

    initialize: function() {}
     console.log("im defined!");
   },


   }

  });
