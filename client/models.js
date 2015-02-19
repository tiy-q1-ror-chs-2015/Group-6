//State Model

var State = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
  urlRoot:'http://localhost:9000/students.json',
  defaults: function(){
    return{
      name: "Alabama",
      attraction: 'Rock Igloo Prayer House',
      restaurant: 'The Club',
      hospital: 'UAB (University of Alabama at Birmingham)',
      activity: 'Shakespeare Festival in Huntsville',
    },

    initialize: function () {
      console.log("student has been initialized!");
    },
  }
});

//Attraction Model
var Attraction = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
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
  urlRoot: 'http://localhost:9000/students.json',
  name: 'The Club',
  location: ''
  genre:'American casual'
  description:''
  contactInfo:'';
  link:''
});

var Hospital = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
  urlRoot: 'http://localhost:9000/students.json',
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

var Activity = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
  urlRoot: 'http://localhost:9000/students.json',
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
