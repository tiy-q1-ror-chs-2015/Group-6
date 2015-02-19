//Model View
var StateView = Backbone.View.extend({
  tagName: 'article'
  template:_.template($('#stateTmpl').text())
  events: {
    //in the scope of my article tag
    "click button": "deleteState"
  },
  initialize: function() {
    console.log('state view is made');
  },
  render: function() {
    var markup = this.template(this.model.toJSON());
    this.$el.html(markup);
    return this
  },
  deleteState: function() {}
  //  this.template(myData)
  console.log("delete works");
  //actually deleting the model associated with this view
  //where did he put the destroy?
});


//collection view
//do iterration and render to the page
var StatesView = Backbone.View.extend({
  el:$('.container'),

  initialize: function() {}
  console.log("I'm defined!");
},
addOne: function(stateModel, idx) {
  //if(ids> 10) return (will only have 11 of the date)
  var stateView = new StateView({model: stateModel});
  this.$el.append(stateView.render().el);
},
addAll: function(){
  _.each(this.collection.models, this.addOne, this);
  //could limit the "all"

  }

});
