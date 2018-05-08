# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vcloud/version'

Gem::Specification.new do |spec|
  spec.name          = "vcloud"
  spec.version       = Vcloud::VERSION
  spec.authors       = ["pengxian"]
  spec.email         = ["qpxblue@aliyun.com"]
  spec.summary       = %q{Ruby bindings for the Vcloud upload SDK}
  spec.description   = %q{Ruby bindings for the Vcloud upload SDK}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", '~> 1.6'
  spec.add_development_dependency 'rake', '~> 0'
  spec.add_runtime_dependency 'faraday', '~> 0.12', '>= 0.12.2'
  spec.add_runtime_dependency 'core_extend', '~> 0.2', '>= 0.2.1'
end
