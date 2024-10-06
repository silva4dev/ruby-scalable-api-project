# typed: true
# frozen_string_literal: true

require_relative '../../core/domain/entity'

module Domain
  module Entities
    class Submission < Core::Domain::Entity
      extend T::Sig

      private_class_method :new

      Props = T.type_alias { { student_id: String, challenge_id: String } }

      sig { params(props: Props, id: T.nilable(Integer)).void }
      def initialize(props, id = nil)
        super(props, id)
      end

      sig { params(props: Props, id: T.nilable(Integer)).returns(Submission) }
      def self.create(props, id = nil)
        new(props, id)
      end
    end
  end
end
