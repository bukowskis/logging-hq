Gem::Specification.new do |spec|

  spec.authors      = %w{ bukowskis }
  spec.summary      = "A GUI for the 'logger' gem."
  spec.description  = "A GUI for the 'logger' gem. Just mount this sinatra app in your rack app and set log levels dynamically."
  spec.homepage     = 'https://github.com/bukowskis/logging-hq'
  spec.license      = 'MIT'

  spec.name         = 'logging-hq'
  spec.version      = '0.0.1'

  spec.files        = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*'] & `git ls-files -z`.split("\0")
  spec.require_path = 'lib'

  spec.rdoc_options.concat ['--encoding',  'UTF-8']

  spec.add_dependency('logging')
  spec.add_dependency('sinatra')
  spec.add_dependency('slim')
  spec.add_dependency('rack-coffee')
  spec.add_dependency('activesupport')
  spec.add_dependency('multi_json')

  spec.add_development_dependency('shotgun')
  spec.add_development_dependency('coffee-script')
  spec.add_development_dependency('rspec')
  spec.add_development_dependency('guard-rspec')
  spec.add_development_dependency('rb-fsevent')

end
