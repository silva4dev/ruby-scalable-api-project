# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'

require_relative '../../domain/entities/submission'

module Application
  module UseCases
    class CreateChallengeSubmission
      extend T::Sig

      sig { params(students_repository: Repositories::StudentsRepository, challenges_repository: Repositories::ChallengesRepository).void }
      def initialize(students_repository, challenges_repository)
        @students_repository = students_repository
        @challenges_repository = challenges_repository
      end

      sig { params(student_id: String, challenge_id: String).returns(Domain::Entities::Submission) }
      def execute(student_id:, challenge_id:)
        student = @students_repository.find_by_id(student_id)
        raise 'Student does not exist' unless student

        challenge = @challenges_repository.find_by_id(challenge_id)
        raise 'Challenge does not exist' unless challenge

        Domain::Entities::Submission.create(student_id:, challenge_id:)
      end
    end
  end
end
