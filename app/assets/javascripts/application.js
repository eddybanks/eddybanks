//= require jquery
//= require bootstrap-sprockets
//= require jquery_ujs
//= require turbolinks
//= require vue
//= require vue-router
//= require vue-resource
//= require_tree .



var startup = function() {
  $('.collapse').collapse({
    show: true
  });
}

$(document).ready(startup);
$(document).on('turbolinks:load', startup);
