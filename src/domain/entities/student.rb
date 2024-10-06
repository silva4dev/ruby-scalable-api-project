# typed: true
# frozen_string_literal: true

require_relative '../../core/domain/entity'

module Domain
  module Entities
    class Student < Core::Domain::Entity
      extend T::Sig

      private_class_method :new

      Props = T.type_alias { { name: String, email: String } }

      sig { params(props: Props, id: T.nilable(Integer)).void }
      def initialize(props, id = nil)
        super(props, id)
      end

      sig { params(props: Props, id: T.nilable(Integer)).returns(Student) }
      def self.create(props, id = nil)
        new(props, id)
      end
    end
  end
end
