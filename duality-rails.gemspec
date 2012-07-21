# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)
 
require 'duality_rails'
 
Gem::Specification.new do |s|
  s.name        = "duality"
  s.version     = DualityRails::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Joshua Mervine"]
  s.email       = ["joshua@mervine.net"]
  s.homepage    = "http://github.com/rubyops/duality-rails/"
  s.summary     = "two caches in rails"
  s.description = "a simple cache interface to setting and getting from two caches - rails support"
 
  s.required_rubygems_version = ">= 1.3.6"
 
  s.add_development_dependency "rspec"
  s.add_development_dependency "simplecov"
  s.add_development_dependency "rdoc"
  s.add_development_dependency "duality"
  s.add_development_dependency "diskcached"
  s.add_development_dependency "mongocached"
 
  s.files        = Dir.glob("lib/**/*") + %w(README.md Gemfile)
  s.require_path = 'lib'
end

