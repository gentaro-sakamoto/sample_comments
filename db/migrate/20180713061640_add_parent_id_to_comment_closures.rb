class AddParentIdToCommentClosures < ActiveRecord::Migration[5.2]
  def change
    add_column :comment_closures, :parent_id, :integer
  end
end
