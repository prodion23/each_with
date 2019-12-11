require_relative 'lib/each_with/version'

Gem::Specification.new do |spec|
  spec.name          = "each_with"
  spec.version       = EachWith::VERSION
  spec.authors       = ["Donnie Propst"]
  spec.email         = ["donniepropst@gmail.com"]

  spec.summary       = %q{Some helpful methods for iteration}
  spec.description   = %q{im tired of if index == array.length}
  spec.homepage      = "https://github.com/prodion23/each-with"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/prodion23/each-with"
  spec.metadata["changelog_uri"] = "https://github.com/prodion23/each-with"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
