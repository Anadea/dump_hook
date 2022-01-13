# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dump_hook/version'

Gem::Specification.new do |spec|
  spec.name          = "dump-hook"
  spec.version       = DumpHook::VERSION
  spec.authors       = ["Alexander Rjazantsev"]
  spec.email         = ["ar@anadeainc.com"]

  spec.summary       = %q{Dumps to cache you backgrounds}
  spec.description   = %q{We use it for our capybara/Cucumber features.}
  spec.homepage    = "https://github.com/Anadea/dump-hook"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'timecop'

  spec.add_development_dependency "bundler", ">= 2.2.10"
  spec.add_development_dependency "rake", ">= 12.3.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sequel"
  spec.add_development_dependency "pg"
  spec.add_development_dependency "mysql2"
end
