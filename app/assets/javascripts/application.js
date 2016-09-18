//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require vue
//= require vue-router
//= require vue-resource
//= require_tree .



var startup = function() {
  $('.item').hover(function () {
    $(this).toggleClass('active');
  });

  $('.ui.sidebar')
    .sidebar('toggle');
}

$(document).ready(startup)
$(document).on('turbolinks:load', startup);
