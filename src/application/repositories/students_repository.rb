# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'

module Application
  module Repositories
    class StudentsRepository
      extend T::Sig

      sig { params(id: String).returns(T.nilable(Domain::Entities::Student)) }
      def find_by_id(id)
        raise NotImplementedError
      end
    end
  end
end
