class CreateZoos < ActiveRecord::Migration[5.0]
  def change
    create_table :zoos do |t|
      t.string :species
      t.string :name

      t.timestamps
    end
  end
end
