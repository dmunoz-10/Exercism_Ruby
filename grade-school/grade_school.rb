# frozen_string_literal: true

# School Class
class School
  def initialize
    @temp = {}
  end

  def add(student, grade)
    @temp.merge!(student => grade)
  end

  def students(grade_to_find)
    @temp.select { |_student, grade| grade == grade_to_find }.keys.sort
  end

  def students_by_grade
    @temp.values.uniq.sort.each_with_object([]) do |value, array|
      array << { grade: value, students: students(value) }
    end
  end
end
