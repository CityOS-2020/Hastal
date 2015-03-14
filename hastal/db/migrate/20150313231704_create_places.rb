class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name
      t.string :slug
      t.string :description
      t.string :address
      t.string :phone

      t.timestamps null: false
    end

    add_index :places, :slug, unique: true
  end
end
