# frozen_string_literal: true

lib = File.expand_path(%(lib), __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require_relative %(lib/pangea-clickhouse/version)

Gem::Specification.new do |spec|
  spec.name                  = %(pangea-clickhouse)
  spec.version               = PangeaClickhouse::VERSION
  spec.authors               = [%(drzzln)]
  spec.email                 = [%(drzzln@protonmail.com)]
  spec.description           = %(ClickHouse Cloud provider resources for Pangea infrastructure DSL. Provides 30 typed Terraform resource functions with Dry::Struct validation.)
  spec.summary               = %(ClickHouse Cloud provider resources for Pangea)
  spec.homepage              = %(https://github.com/pleme-io/pangea-clickhouse)
  spec.license               = %(MIT)
  spec.require_paths         = [%(lib)]
  spec.required_ruby_version = %(>=3.3.0)

  spec.files = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end

  spec.add_dependency "pangea-core", "~> 0.2"
  spec.add_dependency "terraform-synthesizer", "~> 0.0.28"
  spec.add_dependency "dry-types", "~> 1.7"
  spec.add_dependency "dry-struct", "~> 1.6"

  spec.add_development_dependency "rspec", "~> 3.12"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "simplecov", "~> 0.22"

  spec.metadata['rubygems_mfa_required'] = 'true'
end
