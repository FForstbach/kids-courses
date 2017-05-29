class AddPhotoToSchool < ActiveRecord::Migration[5.0]
  def change
    add_column :schools, :photo, :string
  end
end
