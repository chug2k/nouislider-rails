# Nouislider::Rails

Currently tracking 7.0.1 of jquery-noUiSlider: http://refreshless.com/nouislider/. All credit and thanks to @leongersen for the awesome library.
Sorry for not naming it jquery-nouislider-rails, but someone else started another gem a few months ago here (https://github.com/soycamo/jquery-nouislider-rails).

![screenshot from homepage](https://raw.github.com/chug2k/nouislider-rails/master/screenshot.png)

## Installation

Add this line to your application's Gemfile:

    gem 'nouislider-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install nouislider-rails

## Usage

## Require Everything

To require everything including libLink, wNumb and the optional pips, in your app/assets/javascript manifest file:

    //= require jquery.nouislider

To require all styling including the optional pips add-on, in your app/assets/stylesheets manifest file:

    //= require jquery.nouislider

## Require specific options

If you only want the base javascript:

    //= require nouislider/module.range
    //= require nouislider/module.options
    //= require nouislider/module.base

If you want to include the optional `pips` add-on (http://refreshless.com/nouislider/pips/):

    //= require nouislider/optional.pips

If you want to use the `$.Link` feature (binding input fields or other elements to a plugin) you would also need to add:

    //= require libLink/jquery.liblink

If you want to use the `wNumb` feature (number & money formatting) you would also need to add:

    //= require wnumb/wNumb

If you only want the base styling:

    //= require nouislider/jquery.nouislider

http://refreshless.com/nouislider/more/ has more information on integrating your own styles.

## Contributing

1. Fork it ( http://github.com/chug2k/nouislider-rails/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
