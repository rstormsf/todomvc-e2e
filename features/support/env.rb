if ENV['LOCAL']
  require_relative 'common'
  require 'simplecov'
  SimpleCov.start

  Capybara.configure do |config|
    config.default_driver = :selenium
    config.javascript_driver = :selenium
    config.run_server = false
    config.default_selector = :css
    config.default_max_wait_time = 5
    config.app_host = 'http://datadomino-rstorm.bitbucket.org/'

    # capybara 2.1 config options
    config.match = :prefer_exact
    config.ignore_hidden_elements = false
  end


  Capybara.register_driver :selenium do |app|
    Selenium::WebDriver::Firefox::Binary.path = "#{ENV['HOME']}/Downloads/firefox-sdk/bin/Firefox.app/Contents/MacOS/firefox"
    profile = Selenium::WebDriver::Firefox::Profile.new
    profile['browser.cache.disk.enable'] = false
    profile['browser.cache.memory.enable'] = false
    Capybara::Selenium::Driver.new(app, browser: :firefox, profile: profile)
  end

  SitePrism.configure do |config|
    config.use_implicit_waits = false
  end

end