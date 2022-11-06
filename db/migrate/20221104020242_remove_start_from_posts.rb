class RemoveStartFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :start, :string
  end
end
