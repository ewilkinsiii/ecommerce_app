class AddAttributesProductIdToProductOptions < ActiveRecord::Migration
  def change
     change_table :product_options do |t|
      t.integer :product_id
      t.string :gamesystem
    end
  end
end
