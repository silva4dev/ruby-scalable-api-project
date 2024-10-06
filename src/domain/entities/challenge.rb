# typed: true
# frozen_string_literal: true

require_relative '../../core/domain/entity'

module Domain
  module Entities
    class Challenge < Core::Domain::Entity
      extend T::Sig

      private_class_method :new

      Props = T.type_alias { { title: String, instruction_url: String } }

      sig { params(props: Props, id: T.nilable(Integer)).void }
      def initialize(props, id = nil)
        super(props, id)
      end

      sig { params(props: Props, id: T.nilable(Integer)).returns(Challenge) }
      def self.create(props, id = nil)
        new(props, id)
      end
    end
  end
end
