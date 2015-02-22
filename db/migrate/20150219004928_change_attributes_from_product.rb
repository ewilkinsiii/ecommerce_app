class ChangeAttributesFromProduct < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.change :product_options_id, :integer
    end
  end
end
