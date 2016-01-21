require File.expand_path('../lib/scrivito_minicolors_editor/version', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'scrivito_minicolors_editor'
  s.version     = ScrivitoMinicolorsEditor::VERSION

  s.authors     = ['Scrivito']
  s.email       = ['support@scrivito.com']
  s.homepage    = 'https://scrivito.com'

  s.summary     = 'Minicolors editor for Scrivito CMS'
  s.description = 'This gem integrates the JavaScript colopicker Minicolors in Scrivito CMS.'
  s.license     = 'LGPL-3.0'

  s.files = Dir['{app,lib}/**/*', 'LICENSE', 'Rakefile']

  s.add_dependency 'bundler'
  s.add_dependency 'scrivito'
  s.add_dependency 'jquery-minicolors-rails'

  s.add_development_dependency 'rake'
end
