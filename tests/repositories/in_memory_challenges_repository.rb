# frozen_string_literal: true

require_relative '../../src/application/repositories/challenges_repository'

class InMemoryChallengesRepository < Application::Repositories::ChallengesRepository
  def initialize
    @items = []
  end

  def find_by_id(id)
    challenge = @items.find { |ch| ch.id == id }
    challenge.nil? ? nil : challenge
  end

  def items
    @items
  end
end
