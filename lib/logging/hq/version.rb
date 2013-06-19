require 'logging'

module Logging
  module HQ
    module VERSION #:nodoc:
      MAJOR = 0
      MINOR = 0
      TINY  = 1

      STRING = [MAJOR, MINOR, TINY].compact.join('.')
    end
  end
end