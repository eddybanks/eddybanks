//= require jquery
//= require materialize-sprockets
//= require materialize/extras/nouislider
//= require jquery_ujs
//= require turbolinks
//= require vue
//= require vue-router
//= require vue-resource
//= require_tree .


var vue_function = function() {
  var user = {
    name: true
  }

  var vue_inst = new Vue({
    el: '.jumbotron',
    data: user
  })
}


var startup = function() {
  vue_function();

  $('.datepicker').pickadate({
    selectMonths: true, // Creates a dropdown to control month
    selectYears: 15 // Creates a dropdown of 15 years to control year
  });
}

$(document).ready(startup)
$(document).on('turbolinks:load', startup);
