# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'

require_relative '../../src/application/repositories/challenges_repository'

class InMemoryChallengesRepository < Application::Repositories::ChallengesRepository
  extend T::Sig

  sig { void }
  def initialize
    super()
    @items = T.let([], T::Array[Domain::Entities::Challenge])
  end

  sig { params(id: String).returns(T.nilable(Domain::Entities::Challenge)) }
  def find_by_id(id)
    challenge = @items.find { |ch| ch.id == id }
    challenge.nil? ? nil : challenge
  end

  sig { returns(T::Array[Domain::Entities::Challenge]) }
  attr_reader :items
end
