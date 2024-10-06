# typed: true
# frozen_string_literal: true

require_relative '../../src/application/repositories/students_repository'

class InMemoryStudentsRepository < Application::Repositories::StudentsRepository
  def initialize
    super()
    @items = []
  end

  def find_by_id(id)
    student = @items.find { |st| st.id == id }
    student.nil? ? nil : student
  end

  attr_reader :items
end
