class AddStudentColumnToDojo < ActiveRecord::Migration[5.0]
  def change
    add_reference :dojos, :student, foreign_key: true
  end
end
