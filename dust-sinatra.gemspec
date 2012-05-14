# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "dust-sinatra/version"

Gem::Specification.new do |s|
  s.name        = "dust-sinatra"
  s.version     = Dust::Sinatra::VERSION
  s.authors     = ["Sean Lee", "Hoseong Hwang"]
  s.email       = ["ssowonny@gmail.com", "thefron@wafflestudio.com"]
  s.homepage    = "https://github.com/ssowonny/dust-sinatra"
  s.summary     = %q{Use dust.js with sinatra}
  s.description = %q{This gem makes you dust.js easy to use with sinatra.}

  s.rubyforge_project = "dust-sinatra"

  s.add_dependency('sinatra')
  s.add_dependency('tilt')
  s.add_dependency('execjs')

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
