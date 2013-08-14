# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ban_everyone/version'

Gem::Specification.new do |spec|
  spec.name          = "ban_everyone"
  spec.version       = BanEveryone::VERSION
  spec.authors       = ["Jade McGough"]
  spec.email         = ["jade@thezets.com"]
  spec.description   = %q{Automates League of Legends Tribunal voting}
  spec.summary       = %q{League of Legends Tribunal Automation}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_dependency "selenium-webdriver"
end
