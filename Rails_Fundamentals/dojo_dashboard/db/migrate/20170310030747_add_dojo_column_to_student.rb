class AddDojoColumnToStudent < ActiveRecord::Migration[5.0]
  def change
    add_reference :students, :dojo, foreign_key: true
  end
end
