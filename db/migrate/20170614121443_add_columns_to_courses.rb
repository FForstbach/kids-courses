class AddColumnsToCourses < ActiveRecord::Migration[5.0]
  def change
    add_column :courses, :age_min, :integer
    add_column :courses, :age_max, :integer
    add_column :courses, :skills_expected, :text
    add_column :courses, :free_trial, :boolean
  end
end
