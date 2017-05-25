class Createmywineslist < ActiveRecord::Migration
  def change
    create_table :mywineslist do |t|
      t.string :winename
      t.string :year
      t.string :price
      t.string :varietal
      t.string :winery
      t.boolean :bucketlist
      t.integer :image_id

      t.timestamps

    end
  end
end
