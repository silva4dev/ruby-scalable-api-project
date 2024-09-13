# frozen_string_literal: true

require_relative '../../core/domain/entity'

module Domain
  module Entities
    class Student < Core::Domain::Entity
      private_class_method :new

      def initialize(props, id = nil)
        super(props, id)
      end

      def self.create(props, id = nil)
        new(props, id)
      end
    end
  end
end
