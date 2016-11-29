require 'capybara'
require 'capybara/dsl'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'rspec/expectations'

$LOAD_PATH << './test_site'
$LOAD_PATH << './lib'

require 'site_prism'
require 'test_site'
require 'pages/home'
require 'firebase'

Before do |scenario|
  base_uri = ENV['FIREBASE_URL'] || 'https://todomvc-angular-8559d.firebaseio.com/'
  firebase = Firebase::Client.new(base_uri)
  firebase.delete('/')
end 