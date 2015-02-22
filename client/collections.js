
  var StateCollection = Backbone.Collection.extend({
    url: 'http://localhost:9000/states.json',
    initialize:function(){
      console.log('state collection up and running');
    }
  });
