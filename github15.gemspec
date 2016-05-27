# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'github15/version'

Gem::Specification.new do |spec|
  spec.name          = "github15"
  spec.version       = Github15::VERSION
  spec.authors       = ["Keita Yoshida"]
  spec.email         = ["hacking15dog@gmail.com"]

  spec.summary       = %q{my first gem}
  spec.description   = %q{my first gem}
  spec.homepage      = "https://github.com/typeDog/github15"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://github.com/typeDog/github15"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"

  spec.add_development_dependency "webmock", "~> 2.0.3"
  spec.add_dependency "thor", "~> 0.19.1"
  spec.add_dependency "rest-client", "~> 1.8.0"
end
