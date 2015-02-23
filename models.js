
  var StateCollection = Backbone.Collection.extend({
    url: 'http://localhost:9000/students',
    initialize: function () {
      console.log("State collection started");
   }
 });

 // var AttractionCollection = Backbone.Collection.extend({
 //   url: 'http://localhost:9000/students.json',
 //   initialize: function () {
 //     console.log("What an attractive collection");
 //
 //  var RestaurantCollection = Backbone.Collection.extend({
 //    url: 'http://localhost:9000/students.json',
 //    initialize: function () {
 //     console.log("Who's hungry?");
 //
 //
 //  var HospitalCollection = Backbone.Collection.extend({
 //    url: 'http://localhost:9000/students.json',
 //    initialize: function () {
 //      console.log("So many doctors!");
 // 
 //  var ActivityCollection = Backbone.Collection.extend({
 //    url: 'http://localhost:9000/students.json',
 //    initialize: function () {
 //      console.log("Senior activities");
