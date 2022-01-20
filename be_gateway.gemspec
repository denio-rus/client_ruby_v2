# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'be_gateway_v2/version'

Gem::Specification.new do |gem|
  gem.name          = "be_gateway_v2"
  gem.version       = BeGatewayV2::VERSION
  gem.authors       = ["Pavel Gabriel", "Mac Shifford"]
  gem.email         = ["alovak@gmail.com", "shiroginne@gmail.com"]
  gem.description   = %q{Client for BeGateway processing platform}
  gem.summary       = %q{Client for BeGateway processing platform}
  gem.homepage      = "http://www.begateway.com"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_runtime_dependency "activesupport"
  gem.add_runtime_dependency "faraday"
  gem.add_runtime_dependency "faraday_middleware"
  gem.add_runtime_dependency "backports"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "pry"
  gem.add_development_dependency "byebug"
end
