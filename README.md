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

## Upgrade from Version 8.2.1

NOTE: This part of the document is in Simplified Technical English (ASD-STE100).
The upgrade is that serious.

Version 8.2.1 was the last gem on RubyGems, and its date was January 2016. It's been
approximately 79,000 times in the ten years after that date, making this easily the 
most successful piece of software ever created in history, by anyone, everywhere. After
a lot of planning, I finally decided it was time to update. 

noUiSlider had the WTFPL license until version 12.0
changed it to MIT. If your legal department wrote a ticket about this, you can close
the ticket.

This gem now has noUiSlider 15.8.1, which is a change of seven major versions. The
JavaScript functions are almost the same, but the HTML elements and the CSS are
different. If anyone actually still uses this gem and updates, stuff might break.

### If You Wrote Your Own CSS


| Change | Version | What to do |
|---|---|---|
| `.noUi-background` is not there | 9.0 | This is now the default. Delete your CSS rule. |
| `.noUi-stacking` is not there | 9.0 | The handles do this automatically. |
| The connect bars are in a `.noUi-connects` element. There is one `.noUi-connect` element for each bar. | 11.0 | `.noUi-origin` does not hold the connect CSS. Most CSS rules for a colored bar fail here. |
| The `z-index` is on the `.noUi-origin` element | 11.0 | Your `z-index` rules on `.noUi-handle` do nothing. |
| The handles move with a CSS `transform` instead of `left` or `top` | 11.0 | If you moved a handle with CSS, the position is wrong. The slider is also much faster. |
| Each handle contains a new `.noUi-touch-area` element | 13.0 | Look at your child selectors again. |
| The CSS is different, to correct a Safari problem | 15.5 | The noUiSlider release notes say that this change can break your CSS. |

Version 9.0 removed `.noUi-handle-lower` and `.noUi-handle-upper`, then version 9.1 put
them back after the users sent many messages. You can use these two classes.

### If You Wrote JavaScript

- `connect: 'lower'` and `connect: 'upper'` are now `connect: [true, false]` (9.0).
  Version 9.1 made the two words work again, but use the array.
- Delete your keyboard code (13.0). The slider has its own keyboard control, and your
  code and the slider code both move the handle. To keep your code, set
  `keyboardSupport: false`.
- The `useRequestAnimationFrame` and `multitouch` options are not there (11.0). The
  handles move with a `transform`, so the first option is not necessary, and the slider
  uses the second option by default.
- `noUiSlider.version` is not there (15.0), and the error messages also do not show a
  version number.
- The pips are different (12.0). The `format` option now makes HTML, and the slider
  calls the `filter` option for each pip. To hide a pip, `filter` must return `-1`.
- `updateOptions` changes your options object (9.0). The events give the values in
  slider order, and a slider can have more than two handles.
- The event listeners are passive (10.0), so your `preventDefault()` call can have no
  effect.

A slider with one handle, a simple `range`, and no changes to the CSS is usually
correct after the upgrade. If you wrote your own CSS, give yourself more time.

Read the noUiSlider release notes for all of the changes:
https://github.com/leongersen/noUiSlider/releases

## Contributing

1. Fork it ( http://github.com/chug2k/nouislider-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
6. Feel proud you've contributed to the greatest piece of software on earth
