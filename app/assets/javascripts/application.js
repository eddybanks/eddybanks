//= require jquery
//= require jquery_ujs
//= require bootstrap-sprockets
//= require turbolinks
//= require vue
//= require vue-router
//= require vue-resource
//= require_tree .



var startup = function() {
  // $('.collapse').collapse({
  //   toggle: true
  // });
  // $('#sidebar').affix({offset: {top: 150} });
}

$(document).ready(startup);
$(document).on('turbolinks:load', startup);
