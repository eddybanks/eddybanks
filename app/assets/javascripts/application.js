//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require bootstrap-sprockets
//= require vue
//= require vue-router
//= require vue-resource
//= require_tree .



var startup = function() {
  // $('.page-header').hide();
  $(nav).addClass('container');
}

// $(document).ready(startup);
$(document).on('turbolinks:load', startup);
