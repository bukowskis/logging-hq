$: << File.expand_path('lib', File.dirname(__FILE__))
require 'logging/hq/server'

# Development only
require 'rack/coffee'
use Rack::Coffee, root: 'public', urls: '/javascripts'

require 'logging'
grandmother = Logging.logger['Grandmother']
father      = Logging.logger['Grandmother::Father']
son         = Logging.logger['Grandmother::Father::Son']
daughter    = Logging.logger['Grandmother::Father::Daughter']

grandmother.debug 'hi'
father.debug 'hi'
son.debug 'hi'
daughter.debug 'hi'

run Logging::HQ::Server
