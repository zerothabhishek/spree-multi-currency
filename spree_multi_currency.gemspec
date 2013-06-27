# coding: utf-8
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'spree_multi_currency/version'

Gem::Specification.new do |s|
  s.platform     = Gem::Platform::RUBY
  s.name         = 'spree_multi_currency'
  s.version      = SpreeMultiCurrency::VERSION
  s.summary      = 'Provide currency customization for Spree Commerce'
  s.description  = s.summary
  s.required_ruby_version = '>= 1.9.3'

  s.author       = 'Gregor MacDougall'
  s.email        = 'gmacdougall@freerunningtechnologies.com'
  s.homepage     = 'https://github.com/spree/spree_multi_currency'
  s.license      = %q{BSD-3}

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'spree', '~> 2.0'

  s.add_development_dependency 'rspec-rails', '~> 2.13'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3', '~> 1.3.7'
  s.add_development_dependency 'i18n-spec', '~> 0.4.0'
  s.add_development_dependency 'fuubar', '>= 0.0.1'
  s.add_development_dependency 'pry-rails'
end
