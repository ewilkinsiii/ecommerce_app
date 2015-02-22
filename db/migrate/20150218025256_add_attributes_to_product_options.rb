class AddAttributesToProductOptions < ActiveRecord::Migration
  def change
    change_table :products do |t|
      t.string :gaming_system
    end
  end
end
