class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :start
      t.string :finish
      t.boolean :day
      t.string :memo

      t.timestamps
    end
  end
end
