class RemoveStudentColumnToDojo < ActiveRecord::Migration[5.0]
  def change
    remove_reference :dojos, :student, foreign_key: true
  end
end
