# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'docker_echo_worker/version'

Gem::Specification.new do |spec|
  spec.name          = "docker_echo_worker"
  spec.version       = DockerEchoWorker::VERSION
  spec.authors       = ["Tomokazu Kiyohara"]
  spec.email         = ["tomokazu.kiyohara@gmail.com"]
  spec.summary       = %q{docker echo service's worker}
  spec.description   = %q{docker echo service's worker}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'rack'
  spec.add_runtime_dependency 'puma'
  spec.add_runtime_dependency 'grape'

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency 'pry'
end
