class RemoveAttributesFromProducts < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.remove :gaming_system
      t.remove :product_id
      t.remove :brand
      t.string :product_options_id
    end
  end
end
