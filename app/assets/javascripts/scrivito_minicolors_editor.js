//= require jquery.minicolors
//= require_self

;(function() {
  scrivito.on('load', function() {
    scrivito.define_editor('minicolors', {
      can_use: function(element) {
        return $(element).is('[data-scrivito-field-type=string]');
      },

      activate: function(element) {
        var field = $(element);
        field.minicolors({
          changeDelay: 500,
          change: function(color) {
            field.scrivito('save', color);
          }
        });
      }
    })
  });
}());
