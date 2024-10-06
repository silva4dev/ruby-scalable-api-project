# typed: true
# frozen_string_literal: true

require_relative '../../core/domain/entity'

module Domain
  module Entities
    class Correction < Core::Domain::Entity
      extend T::Sig

      private_class_method :new

      Props = T.type_alias { { grade: Integer } }

      sig { params(props: Props, id: T.nilable(Integer)).void }
      def initialize(props, id = nil)
        super(props, id)
      end

      sig { params(props: Props, id: T.nilable(Integer)).returns(Correction) }
      def self.create(props, id = nil)
        raise 'Grade must be between 0 and 10' if (props[:grade]).negative? || props[:grade] > 10

        new(props, id)
      end
    end
  end
end
