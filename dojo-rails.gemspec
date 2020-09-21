# -*- encoding: utf-8 -*-
require File.expand_path('../lib/dojo/rails/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Robin Dupret"]
  gem.email         = ["robin.dupret@gmail.com"]
  gem.description   = %q{Create web applications using Dojo Toolkit (1.16.3) and Ruby on Rails 3, 4,5 and 6}
  gem.summary       = %q{Dojo Toolkit with Ruby on Rails 3, 4, 5 and 6 supports}
  gem.homepage      = "https://github.com/robin850/dojo-rails"
  gem.license       = "MIT"
  gem.platform      = Gem::Platform::RUBY
  gem.add_dependency "rails", ">= 3.1.12"
  gem.add_development_dependency('rake')
  gem.add_development_dependency('rspec-rails')
  gem.add_development_dependency('capybara')
  gem.add_development_dependency('bundler')
  gem.add_development_dependency('railties', ">= 3.1.12")
  gem.add_development_dependency('actionmailer', ">= 3.1.12")
  gem.add_development_dependency('sqlite3')

  gem.files         = `git ls-files`.split($\)
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "dojo-rails"
  gem.require_path  = "lib"
  gem.version       = Dojo::Rails::VERSION
end
