require "find"

require_relative "version"

Gem::Specification.new do |spec|
  spec.name = "foobara-local-files-crud-driver-generator"
  spec.version = Foobara::Generators::LocalFilesCrudDriverGenerator::VERSION
  spec.authors = ["Miles Georgi"]
  spec.email = ["azimux@gmail.com"]

  spec.summary = "Sets up a basic local files crud driver in an existing foobara project"
  spec.homepage = "https://github.com/foobara/local-files-crud-driver-generator"
  spec.license = "MPL-2.0"
  spec.required_ruby_version = ">= #{File.read("#{__dir__}/.ruby-version")}"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.add_dependency "foobara"
  spec.add_dependency "foobara-files-generator"

  spec.files = Dir[
    "lib/**/*",
    "src/**/*",
    "LICENSE*.txt",
    "README.md",
    "CHANGELOG.md"
    # NOTE: We can't just do "templates/**/*" because there can be hidden files/directories which are skipped
  ] + Find.find("templates/").select { |f| File.file?(f) }

  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"
end
