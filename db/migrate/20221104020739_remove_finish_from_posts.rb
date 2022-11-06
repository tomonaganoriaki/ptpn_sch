class RemoveFinishFromPosts < ActiveRecord::Migration[7.0]
  def change
    remove_column :posts, :finish, :date
  end
end
