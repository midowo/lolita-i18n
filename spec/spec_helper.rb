require 'rubygems'
require 'bundler'
require 'cover_me'

CoverMe.config do |c|
    # where is your project's root:
    c.project.root = File.expand_path("../lolita-i18n") # => "Rails.root" (default)
    
    # what files are you interested in coverage for:
    c.file_pattern =  [
      /(#{CoverMe.config.project.root}\/app\/.+\.rb)/i,
      /(#{CoverMe.config.project.root}\/lib\/.+\.rb)/i
    ] 
end

REQUIRE_RAILS = true # turn of to run lolita-i18n tests fast

begin
  Bundler.setup(:default, :test)
rescue Bundler::BundlerError => e
  $stderr.puts e.message
  $stderr.puts "Run `bundle install` to install missing gems"
  exit e.status_code
end

if REQUIRE_RAILS
  require 'rails'
  require 'rails_spec_helper'
end
require File.expand_path('lib/lolita-i18n')
  
RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.mock_with :rspec
  config.before(:each,:redis) do
    Lolita.i18n.store.flushdb
  end
end

at_exit do
  CoverMe.complete! if 1==1
end