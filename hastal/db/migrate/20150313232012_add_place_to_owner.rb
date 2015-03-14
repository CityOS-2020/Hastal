class AddPlaceToOwner < ActiveRecord::Migration
  def change
    add_reference :owners, :place, index: true
    add_foreign_key :owners, :places
  end
end
