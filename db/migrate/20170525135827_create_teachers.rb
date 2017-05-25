class CreateTeachers < ActiveRecord::Migration[5.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.text :about
      t.references :course, foreign_key: true

      t.timestamps
    end
  end
end
