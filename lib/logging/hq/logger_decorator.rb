require 'logging/hq/level'

module Logging
  module HQ
    class LoggerDecorator

      def initialize(object)
        @source = object
      end

      def name
        source.name
      end

      def level
        Level.new source.level
      end

      def children
        ::Logging::Repository.instance.children source.name
      end

      private

      attr_reader :source

    end
  end
end
