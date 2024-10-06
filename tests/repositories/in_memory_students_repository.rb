# typed: true
# frozen_string_literal: true

require 'sorbet-runtime'

require_relative '../../src/application/repositories/students_repository'

class InMemoryStudentsRepository < Application::Repositories::StudentsRepository
  extend T::Sig

  sig { void }
  def initialize
    super()
    @items = T.let([], T::Array[Domain::Entities::Student])
  end

  sig { params(id: String).returns(T.nilable(Domain::Entities::Student)) }
  def find_by_id(id)
    student = @items.find { |st| st.id == id }
    student.nil? ? nil : student
  end

  sig { returns(T::Array[Domain::Entities::Student]) }
  attr_reader :items
end
