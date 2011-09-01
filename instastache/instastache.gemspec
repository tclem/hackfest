# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "instastache/version"

Gem::Specification.new do |s|
  s.name        = "instastache"
  s.version     = Instastache::VERSION
  s.authors     = ["Justin Searls", "Tim Clem", "Alex Welch", "Jay Zes"]
  s.email       = ["searls@gmail.com"]
  s.homepage    = "http://github.comt/tclem/hackfest"
  s.summary     = "Mustachify.me + instagram api"
  s.description = "Mustaches + Instagram"

  s.files = Dir["{lib}/**/*"] + ["Rakefile"]
  s.test_files = Dir["test/**/*"]
  s.require_paths = ["lib"]

  s.add_dependency 'instagram'

  # Development Dependencies
  s.add_development_dependency "minitest" , "~> 2.2.2"
end
