class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.integer :user_id  , null: false, default: ""
      t.string :title     , null: false, default: ""
      t.text :content     , null: false, default: ""

      t.timestamps
    end
  end
end