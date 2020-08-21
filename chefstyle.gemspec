# frozen_string_literal: true
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "chefstyle/version"

Gem::Specification.new do |spec|
  spec.name          = "chefstyle"
  spec.version       = Chefstyle::VERSION
  spec.authors       = ["Chef Software, Inc."]
  spec.email         = ["oss@chef.io"]

  spec.summary       = %q{RuboCop configuration for Chef's ruby projects}
  spec.homepage      = "https://github.com/chef/chefstyle"
  spec.license       = "Apache-2.0"
  spec.required_ruby_version = ">= 2.4"

  spec.files = %w{LICENSE chefstyle.gemspec} + Dir.glob("{bin,config,lib}/**/*", File::FNM_DOTMATCH).reject { |f| File.directory?(f) }
  spec.executables = %w{chefstyle}
  spec.require_paths = ["lib"]

  spec.add_dependency("rubocop", Chefstyle::RUBOCOP_VERSION)
end
