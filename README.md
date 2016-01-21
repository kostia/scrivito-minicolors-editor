# Scrivito Minicolors Editor

[![Gem Version](https://badge.fury.io/rb/scrivito_minicolors_editor.svg)](http://badge.fury.io/rb/scrivito_minicolors_editor)

This gem integrates the JavaScript colopicker [Minicolors](http://labs.abeautifulsite.net/jquery-minicolors) in [Scrivito](https://scrivito.com) CMS.

<img src="https://raw.github.com/kostia/scrivito_minicolors_editor/master/scrivito_minicolors_editor.png" alt="Screenshot Scrivito Minicolors Editor" width=200>

## Installation

Add to `Gemfile`:
```ruby
gem 'scrivito_minicolors_editor'
```

and run `bundle`.

Add to `app/assets/javascripts/application.js` _after_ `scrivito`:
```javascript
//= require scrivito_minicolors_editor
```

Add to `app/assets/stylesheets/application.css`:
```css
/*
 *= require scrivito_minicolors_editor
 */
```

## Usage example

In following example we enable the colorpicker for all attributes whose name end with `"color"`,
e.g. `"background_color"`:
```erb
<%= scrivito_tag :input, widget, :background_color, value: widget.background_color %>
```

In JavaScript:
```javascript
scrivito.on("load", function() {
  scrivito.select_editor(function(element, editor) {
    if ($(element).is("[data-scrivito-field-name$=color]")) {
      editor.use("minicolors");
    }
  });
});
```

For more details on how to use and configure the colorpicker see https://github.com/kostia/jquery-minicolors-rails.
For more details on Scrivito editors API see https://scrivito.com/using-and-defining-editors.
For more Scrivito add-ons see https://scrivito.com/widget-gallery.

## Contributing

1. Fork it ( https://github.com/kostia/scrivito_minicolors_editor/merge_tags/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
