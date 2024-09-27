class CreateCats < ActiveRecord::Migration[7.1]
  def change
    create_table :cats do |t|
      t.string :name
      t.integer :age
      t.string :breed

      t.timestamps
    end
  end
end
