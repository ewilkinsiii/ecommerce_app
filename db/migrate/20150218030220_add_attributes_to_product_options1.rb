class AddAttributesToProductOptions < ActiveRecord::Migration
  def change
     change_table :products do |t|
      t.string :gamesystem
    end
  end
end
