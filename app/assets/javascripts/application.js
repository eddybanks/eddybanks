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
  // $('.project-modal').modal();
  .affix {
      top: 0;
      width: 100%;
  }

  .affix + .container {
      padding-top: 70px;
  }
}

$(document).ready(startup);
$(document).on('turbolinks:load', startup);
