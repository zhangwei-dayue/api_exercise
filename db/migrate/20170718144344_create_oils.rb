class CreateOils < ActiveRecord::Migration[5.0]
  def change
    create_table :oils do |t|
      t.string :juhe_city
      t.string :b90
      t.string :b93
      t.string :b97
      t.string :b0
      t.timestamps
    end

    add_index :oils, :juhe_city
  end
end
