# typed: true
# frozen_string_literal: true

require 'uuid'

module Core
  module Domain
    class Entity
      attr_reader :id
      attr_accessor :props

      def initialize(props, id = nil)
        @props = props
        @id = id || UUID.new.generate
      end
    end
  end
end
