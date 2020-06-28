require_relative "lib/zoom_api/version"

Gem::Specification.new do |s|
  s.name          = "zoom_api"
  s.version       = ZoomAPI::VERSION
  s.authors       = ["Clay Dunston"]
  s.email         = ["dunstontc@gmail.com"]
  s.summary       = "A Ruby wrapper around Zoom's REST API."
  s.description   = s.description
  s.homepage      = "https://github.com/tcd/zoom_api"
  s.license       = "MIT"
  s.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  s.metadata["homepage_uri"] = s.homepage
  s.metadata["source_code_uri"] = s.homepage
  s.metadata["changelog_uri"] = "#{s.homepage}/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  s.files = Dir.chdir(File.expand_path("..", __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  s.bindir = "exe"
  s.executables = s.files.grep(%r{^exe/}) { |f| File.basename(f) }
  s.require_paths = ["lib"]

  s.add_development_dependency("coveralls", "~> 0.7.2")
  s.add_development_dependency("minitest", "~> 5.0")
  s.add_development_dependency("minitest-focus", "~> 1.2")
  s.add_development_dependency("minitest-reporters", "~> 1.4")
  s.add_development_dependency("pry", "~> 0.13.1")
  s.add_development_dependency("rake", "~> 12.0")
  s.add_development_dependency("simplecov")
end
