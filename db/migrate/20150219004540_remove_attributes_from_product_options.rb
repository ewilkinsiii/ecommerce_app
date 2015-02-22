class RemoveAttributesFromProductOptions < ActiveRecord::Migration
  def change
     change_table :product_options do |t|
     t.remove :product_id
    end
  end
end
