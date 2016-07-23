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
}

$(document).ready(startup)
$(document).on('page:load', startup);
