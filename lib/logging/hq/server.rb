require 'sinatra/base'
require 'logging'
require 'slim'
require 'active_support'
require 'active_support/core_ext/object/to_json'
require 'logging/hq/logger_decorator'
require 'logging/hq/level'
require 'rack/coffee'

module Logging
  module HQ
    class Server < Sinatra::Base

      set :root, File.expand_path('../../../../', __FILE__)
      set :logging, true

      helpers do

        def logger_and_children(logger = ::Logging.logger.root)
          @logger = LoggerDecorator.new(logger)
          slim :logger
        end

        def badges(decorator, layout = true)
          @logger = decorator
          slim :badges, layout: layout
        end

        def badge(decorator, level, layout = true)
          @logger = decorator
          @level = level
          slim :badge, layout: layout
        end

      end

      get '/' do
        slim :index
      end

      post '/set' do
        content_type 'application/json'

        logger = ::Logging::Repository.instance.fetch params[:logger]
        logger.level = params[:level]
        decorator = LoggerDecorator.new(logger)

        { status: :success, html: badges(decorator, false) }.to_json
      end
      
      post 'reset' do
        
      end

    end
  end
end
