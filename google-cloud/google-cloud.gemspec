# -*- encoding: utf-8 -*-
require File.expand_path("../lib/google/cloud/version", __FILE__)

Gem::Specification.new do |gem|
  gem.name          = "google-cloud"
  gem.version       = Google::Cloud::VERSION

  gem.authors       = ["Mike Moore", "Chris Smith"]
  gem.email         = ["mike@blowmage.com", "quartzmo@gmail.com"]
  gem.description   = "google-cloud is the official library for Google Cloud Platform APIs."
  gem.summary       = "API Client library for Google Cloud"
  gem.homepage      = "http://googlecloudplatform.github.io/google-cloud-ruby/"
  gem.license       = "Apache-2.0"

  gem.files         = `git ls-files -- lib/*`.split("\n") +
                      ["README.md", "LICENSE", ".yardopts"]
  gem.require_paths = ["lib"]

  gem.required_ruby_version = ">= 2.0.0"

  gem.add_dependency "google-cloud-bigquery", "~> 0.23.0"
  gem.add_dependency "google-cloud-datastore", "~> 0.23.0"
  gem.add_dependency "google-cloud-dns", "~> 0.21.0"
  gem.add_dependency "google-cloud-error_reporting", "~> 0.21.0"
  gem.add_dependency "google-cloud-language", "~> 0.22.0"
  gem.add_dependency "google-cloud-logging", "~> 0.23.0"
  gem.add_dependency "google-cloud-monitoring", "~> 0.21.0"
  gem.add_dependency "google-cloud-pubsub", "~> 0.21.0"
  gem.add_dependency "google-cloud-resource_manager", "~> 0.21.0"
  gem.add_dependency "google-cloud-speech", "~> 0.21.0"
  gem.add_dependency "google-cloud-storage", "~> 0.23.0"
  gem.add_dependency "google-cloud-translate", "~> 0.22.0"
  gem.add_dependency "google-cloud-vision", "~> 0.21.0"

  gem.add_development_dependency "minitest", "~> 5.9"
  gem.add_development_dependency "minitest-autotest", "~> 1.0"
  gem.add_development_dependency "minitest-focus", "~> 1.1"
  gem.add_development_dependency "minitest-rg", "~> 5.2"
  gem.add_development_dependency "autotest-suffix", "~> 1.1"
  gem.add_development_dependency "rubocop", "<= 0.35.1"
  gem.add_development_dependency "simplecov", "~> 0.9"
  gem.add_development_dependency "yard", "~> 0.9"
  gem.add_development_dependency "yard-doctest", "<= 0.1.8"
end
