module Logging
  module HQ
    class Level
      attr_reader :level

      def initialize(level)
        @level = level
      end

      def to_s
        if level < ::Logging::LEVELS.length
          ::Logging.levelify(::Logging::LNAMES[level])
        else
          'off'
        end
      end

      def css_classes
        [:label, ("label-#{bootstrap_class}" if bootstrap_class)]
      end

      private

      def bootstrap_class
        case to_s
        when 'debug' then :info
        when 'warn'  then :warning
        when 'info'  then :success
        when 'error' then :important
        when 'fatal' then :inverse
        end
      end
    end
  end
end