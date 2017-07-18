class CreateOilCities < ActiveRecord::Migration[5.0]
  def change
    create_table :oil_cities do |t|
      t.string :juhe_city
      t.string :b90
      t.string :b93
      t.string :b97
      t.string :b0
      t.timestamps
    end
  end
end
