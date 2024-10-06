# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'

module Application
  module Repositories
    class ChallengesRepository
      extend T::Sig

      sig { params(id: String).returns(T.nilable(Domain::Entities::Challenge)) }
      def find_by_id(id)
        raise NotImplementedError
      end
    end
  end
end
