# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "mailcannon/version"

Gem::Specification.new do |s|
  s.name                  = "mailcannon"
  s.version               = MailCannon::Version::STRING
  s.platform              = Gem::Platform::RUBY
  s.required_ruby_version = ">= 1.9.3"
  s.authors               = ["Lucas Martins"]
  s.email                 = ["lucasmartins@railsnapraia.com"]
  s.homepage              = "http://rubygems.org/gems/mailcannon"
  s.summary               = "A mass mailing tool for real threads aficionados"
  s.description           = s.summary
  s.license               = "MIT"

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency "vcr"
  s.add_development_dependency "rspec"
  s.add_development_dependency "rspec-mocks"
  s.add_development_dependency "rspec-expectations"
  s.add_development_dependency "webmock", '>= 1.8.0', '< 1.16'
  s.add_development_dependency "database_cleaner"
  s.add_development_dependency "factory_girl"
  s.add_development_dependency "rake"
  s.add_development_dependency "pry"
  s.add_development_dependency "pry-nav"
  s.add_development_dependency "yard"
end

