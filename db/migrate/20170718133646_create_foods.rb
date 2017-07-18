class CreateFoods < ActiveRecord::Migration[5.0]
  def change
    create_table :foods do |t|
      t.string :juhe_name
      t.string :city
      t.string :address
      t.string :phone
      t.string :tags
      t.string :avg_price
      t.timestamps
    end

    add_index :foods, :juhe_name
  end
end
