class AddSchoolToTeachers < ActiveRecord::Migration[5.0]
  def change
    add_reference :teachers, :school, foreign_key: true
  end
end
