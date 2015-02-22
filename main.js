$(function () {
  var stateCollection = new StateCollection();

  stateCollection.fetch().then(function() {

    var appView = new AppView({collection: stateCollection})

  });


});
