class CreateBucketListWines < ActiveRecord::Migration
  def change
    create_table :bucket_list_wines do |t|
      t.integer :user_id
      t.integer :wine_id
      t.string :bucket_wine_name
      t.string :string

      t.timestamps

    end
  end
end
