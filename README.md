# Nouislider::Rails

Currently tracking 15.8.1 of noUiSlider: https://refreshless.com/nouislider/. All credit and thanks to @leongersen for the awesome library.

![screenshot from homepage](https://raw.github.com/chug2k/nouislider-rails/master/screenshot.png)

## Usage
Add this line to your application's Gemfile:

    gem 'nouislider-rails'

### Sprockets

Add the following directive to your application.js:

    //= require nouislider

Add the following directive to your application.css:

    *= require nouislider

That pulls in the core styles plus the pips and tooltips styles. To cherry-pick
instead, require only the parts you need:

    *= require nouislider/nouislider
    *= require nouislider/nouislider.pips
    *= require nouislider/nouislider.tooltips

### Propshaft

Propshaft has no `require` directives, so reference the assets from your layout
instead:

```erb
<%= stylesheet_link_tag "nouislider" %>
<%= javascript_include_tag "nouislider" %>
```

The individual stylesheets work the same way, e.g.
`stylesheet_link_tag "nouislider/nouislider.pips"`.

### Creating a slider

Once the assets are loaded:

```js
var slider = document.getElementById('slider');

noUiSlider.create(slider, {
  start: [20, 80],
  connect: true,
  range: {
    min: 0,
    max: 100
  }
});
```

https://refreshless.com/nouislider/ has the full documentation, including
examples and every available option.

## Upgrading from 9.x

This release jumps from noUiSlider 9.0.0 to 15.8.1, spanning several upstream
major versions. If you have written CSS against noUiSlider's markup, note that
the connect elements moved: they are now rendered inside a `.noUi-connects`
wrapper, one `.noUi-connect` per connecting segment, and `.noUi-origin` no
longer carries the connect styling.

See the upstream release notes for the full list of changes:
https://github.com/leongersen/noUiSlider/releases

## Contributing

1. Fork it ( http://github.com/chug2k/nouislider-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
