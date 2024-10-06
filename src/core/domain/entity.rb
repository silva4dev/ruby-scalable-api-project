# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'
require 'uuid'

module Core
  module Domain
    class Entity
      extend T::Sig

      sig { returns(String) }
      attr_reader :id

      sig { returns(T::Hash[String, T.untyped]) }
      attr_accessor :props

      sig { params(props: T::Hash[String, T.untyped], id: T.nilable(String)).void }
      def initialize(props, id = nil)
        @props = props
        @id = id || UUID.new.generate
      end
    end
  end
end
