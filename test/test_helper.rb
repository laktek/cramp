begin
  require File.expand_path('../../.bundle/environment', __FILE__)
rescue LoadError
  require 'rubygems'
  require 'bundler'
  Bundler.setup
end

cramp_path = File.join(File.dirname(__FILE__), "../lib")
$:.unshift(cramp_path) unless $:.include?(cramp_path)

require 'cramp/controller'

require 'test/unit'
require 'usher'
