# frozen_string_literal: true

require_relative '../../src/application/repositories/students_repository'

class InMemoryStudentsRepository < Application::Repositories::StudentsRepository
  def initialize
    @items = []
  end

  def find_by_id(id)
    student = @items.find { |st| st.id == id }
    student.nil? ? nil : student
  end

  def items
    @items
  end
end
