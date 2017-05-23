class CreateCourses < ActiveRecord::Migration[5.0]
  def change
    create_table :courses do |t|
      t.string :title
      t.text :subtitle
      t.text :description
      t.integer :capacity
      t.datetime :start
      t.datetime :end

      t.timestamps
    end
  end
end
