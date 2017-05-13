class CreateWines < ActiveRecord::Migration
  def change
    create_table :wines do |t|
      t.string :name
      t.string :year
      t.string :price
      t.integer :varietal_id
      t.string :winery

      t.timestamps

    end
  end
end
