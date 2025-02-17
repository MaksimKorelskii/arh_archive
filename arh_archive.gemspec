# frozen_string_literal: true

require File.expand_path('lib/arh_archive/version', __dir__)

Gem::Specification.new do |spec|
  spec.name                  = 'arh_archive'
  spec.version               = ArhArchive::VERSION
  spec.authors               = ['Maksim Korelskii']
  spec.email                 = ['mkorelskii@gmail.com']
  spec.summary               = 'Ruby interface.'
  spec.description           = 'This is a Ruby client that enables you to easily perform using ' \
                               'ArhArchive.'
  spec.homepage              = 'https://github.com/MaksimKorelskii/arh_archive'
  spec.license               = 'MIT'
  spec.platform              = Gem::Platform::RUBY
  spec.required_ruby_version = '>= 2.7.0'

  spec.files = Dir['README.md', 'LICENSE.md',
                   'CHANGELOG.md', 'lib/**/*.rb',
                   'arh_archive.gemspec',
                   'Gemfile']
  spec.extra_rdoc_files = ['README.md']
  spec.require_paths    = ['lib']

  spec.add_dependency 'faraday', '~> 2.6'
  spec.add_dependency 'zeitwerk', '~> 2.4'
  spec.add_development_dependency 'rubocop', '~> 1.6'
  spec.add_development_dependency 'rubocop-performance', '~> 1.5'

  spec.metadata = {
    'source_code_uri' => 'https://github.com/MaksimKorelskii/arh_archive',
    'rubygems_mfa_required' => 'true'
  }
end
