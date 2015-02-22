
var App = {};
$(function () {
  App.router = new Router();
  Backbone.history.start();
})

$(document).ready(function(){
    page.init();
});


var page = {
    init: function () {
        page.initEvents();
    },
    initStyling: function () {
    },
    initEvents: function () {
        $('.california').on('click', function(event){
            event.preventDefault();
            $('.bodyy1').addClass("hide");
            console.log("hello");
        })
    }
}
