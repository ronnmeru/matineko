class CreatePostImages < ActiveRecord::Migration[5.2]
  def change
    create_table :post_images do |t|
      t.integer :post_id, null: false, default: ""
      t.string :image_id, null: false, default: ""

      t.timestamps
    end
  end
end
