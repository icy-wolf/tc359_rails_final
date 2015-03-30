class CreateWolves < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.text :name
      t.text :species
      t.text :pack_rank
      t.integer :pack_number
      t.boolean :is_alive

      t.timestamps null: false
    end
  end
end
