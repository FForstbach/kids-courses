class RemoveCourseFromTeachers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :teachers, :course, foreign_key: true
  end
end
