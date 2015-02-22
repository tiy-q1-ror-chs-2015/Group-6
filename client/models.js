//State Model

var State = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
  urlRoot:'http://localhost:9000/states',
  defaults: function(){
    return{
      name: "Alabama",
      attraction: 'Rock Igloo Prayer House',
      restaurant: 'The Club',
      hotel: 'Hilton, Birmingham',

    },
    initialize: function () {
      console.log("state has been initialized!");
    },
    toJSON: function () {
      return {state: this.attributes}
    }
  });

  //Attraction Model
  var Attraction = Backbone.Model.extend({
    //template: _.template($('attractionTmpl').html()),
    //tagName: 'article'
    urlRoot: 'http://localhost:9000/students.json',
    defaults: function() {
      return:
      name: 'Rock Igloo Prayer House',
      location:'',
      contactInfo: '',
      image:
      description:'',
    };
  },
});

//Restaurant Model
var Restaurant = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
  urlRoot: 'http://localhost:9000/states',
  name: 'The Club',
  location: ''
  genre:'American casual'
  description:''
  contactInfo:'';
  link:''
});

var Hotel = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
  urlRoot: 'http://localhost:9000/hotels',
  defaults function() {
    return{
      name:
      location:
      description:
      contactInfo:
      link:
    };
  },
});

var Attraction = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
  urlRoot: 'http://localhost:9000/attractions',
  defaults function() {
    return{
      name:
      location:
      image:
      description:
      contactInfo:
      link:
    };
  },
});
