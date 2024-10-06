# typed: true
# frozen_string_literal: true

module Application
  module Repositories
    class ChallengesRepository
      def find_by_id(id)
        raise NotImplementedError
      end
    end
  end
end
