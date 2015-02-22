//State Model

var State = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
  urlRoot:'http://localhost:9000/states',
  idAttributes: 'id',
  defaults: function(){
    return{
      name: "state.name",
      attraction: 'state.attractions',
      restaurant: 'state.restaurants',
      hotel: 'state.hotels',
    };
  },
    initialize: function () {
      console.log("state has been initialized!");
    {
  })
    toJSON: function () {
      return {state: this.attributes}
    }
  });

  //Attraction Model
  var AttractionModel = Backbone.Model.extend({
    //template: _.template($('attractionTmpl').html()),
    //tagName: 'article'
    urlRoot: 'http://localhost:9000/states/attraction',
    idAttraction: 'id'
    defaults: function() {
      return {
      name: 'state.attractions',
      city: 'state.attractions.city',
      cost: 'state.attractions.cost',
      rating: 'state.attractions.rating',
      address:'state.attractons.name',
      phoneNumber: 'state.attractions.phone_number'
    };
  },
    initialize: function () {
      console.log('Attracton created');
    }
})

//Restaurant Model
var Restaurant = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
    urlRoot: 'http://localhost:9000/states/attraction',
    idAttraction: 'id'
    defaults: function() {
      return {
        name: 'state.restaurants',
        city: 'state.restaurants.city',
        cost: 'state.restaurants.cost',
        rating: 'state.restaurants.rating',
        address:'state.restaurants.name',
        phoneNumber: 'state.restaurants.phone_number'
      };
    },
});

var Hotel = Backbone.Model.extend({
  //template: _.template($('stateTmpl').html()),
  //tagName: 'article'
  urlRoot: 'http://localhost:9000/hotels',
  defaults function() {
    return{
      name: 'state.hotels',
      city: 'state.hotels.city',
      cost: 'state.hotels.cost',
      rating: 'state.hotels.rating',
      address:'state.hotels.name',
      phoneNumber: 'state.hotels.phone_number'
    };
  },
});
