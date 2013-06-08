# Spree MultiCurrency

[![Build Status](https://travis-ci.org/futhr/spree_multi_currency.png)](https://travis-ci.org/futhr/spree_multi_currency)
[![Dependency Status](https://gemnasium.com/futhr/spree_multi_currency.png)](https://gemnasium.com/futhr/spree_multi_currency)
[![Coverage Status](https://coveralls.io/repos/futhr/spree_multi_currency/badge.png?branch=master)](https://coveralls.io/r/futhr/spree_multi_currency)

**NOTE: THIS FORK IS WIP FOR SPREE 2.x**

Provides UI to allow configuring multiple currencies in Spree.

This provides 3 preferences:

* allow_currency_change - Allow the users to change their currency via the currency set action.
* show_currency_selector - Display the currency selector in the main nav bar. This will only display if there are multiple supported currencies, and allow_currency_change is on.
* supported_currencies - A comma separated list of.

### Example

To install you'll need to add the following to your Gemfile:
```ruby
gem 'spree_multi_currency', github: 'spree/spree_multi_currency'
```

Run:

    $ bundle install

And then run:

    $ rails generate spree_multi_currency:install

### TODO

* The price range filters don't work properly for the non-default currency.
* Style the currency selector to look better.
* Improve the currency selector with something like select2.

## Development

  * Fork the repo
  * Clone your repo
  * Run `bundle`
  * Run `bundle exec rake test_app` to create the test application in `spec/test_app`
  * Make your changes
  * Ensure specs pass by running `bundle exec rake`
  * Submit your pull request

Copyright (c) 2013, Spree Commerce, Inc. and other contributors, released under the New BSD License
