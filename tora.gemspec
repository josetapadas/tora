# frozen_string_literal: true

require_relative "lib/tora/version"

Gem::Specification.new do |spec|
  spec.name = "tora"
  spec.version = Tora::VERSION
  spec.authors = ["José Tapadas Alves"]
  spec.email = ["jose@tapadas.dev"]

  spec.summary = "Tora Ruby Framework"
  spec.description = "An opinionated rack-based ruby lightweight framework"
  spec.homepage = "https://github.com/josetapadas/tora"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_runtime_dependency "rack", "~> 2.2"
  spec.add_development_dependency "rack-test", "~> 2"
  spec.add_development_dependency "minitest", "~> 5"
  spec.add_development_dependency "pry"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
