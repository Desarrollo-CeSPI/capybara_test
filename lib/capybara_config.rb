require 'rubygems'
require 'bundler/setup'
require 'capybara'
require 'capybara/dsl'
require 'capybara/poltergeist'

# including capybara DLS magic
include Capybara::DSL
# we will be using the PhantomJS driver to test our app. The other possible options are: Selenium or WebKit.
Capybara.default_driver = :poltergeist
# witch host we are going to test
Capybara.app_host = 'url to app'
# there is no need to start a server, it should be running before start testing
Capybara.run_server = false