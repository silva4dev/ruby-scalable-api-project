# frozen_string_literal: true

require_relative '../../core/domain/entity'

module Domain
  module Entities
    class Correction < Core::Domain::Entity
      private_class_method :new

      def initialize(props, id = nil)
        super(props, id)
      end

      def self.create(props, id = nil)
        if props[:grade] < 0 || props[:grade] > 10
          raise 'Grade must be between 0 and 10'
        end

        new(props, id)
      end
    end
  end
end
