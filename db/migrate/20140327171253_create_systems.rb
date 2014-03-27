class CreateSystems < ActiveRecord::Migration
  def change
    create_table :systems do |t|
      t.string :name
      t.integer :locx
      t.integer :locy
      t.integer :buildslots

      t.timestamps
    end
  end
end
