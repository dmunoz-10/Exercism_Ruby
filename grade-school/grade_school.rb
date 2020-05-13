# School Class
class School
  def initialize
    @temp = {}
  end

  def add(student, grade)
    @temp.merge!(student => grade)
  end

  def students(grade)
    (@temp.select { |_k, v| v == grade }).keys.sort
  end

  def students_by_grade
    @temp.values.uniq.sort.each_with_object([]) do |v, aux|
      aux << { grade: v, students: students(v) }
    end
  end
end

module BookKeeping
  VERSION = 3
end
