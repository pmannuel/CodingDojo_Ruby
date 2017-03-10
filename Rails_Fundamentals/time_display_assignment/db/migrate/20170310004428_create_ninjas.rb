class CreateNinjas < ActiveRecord::Migration[5.0]
  def change
    create_table :ninjas do |t|
      t.string :name
      t.string :dojo
      t.string :language
      t.text :comment

      t.timestamps
    end
  end
end
