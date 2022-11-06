class AddStartToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :start, :date
  end
end
