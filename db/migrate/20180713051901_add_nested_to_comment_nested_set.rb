class AddNestedToCommentNestedSet < ActiveRecord::Migration[5.2]
  def self.up
    add_column :comment_nested_sets, :parent_id, :integer
    add_column :comment_nested_sets, :lft,       :integer
    add_column :comment_nested_sets, :rgt,       :integer

    # optional fields
    add_column :comment_nested_sets, :depth,          :integer
    add_column :comment_nested_sets, :children_count, :integer

    # This is necessary to update :lft and :rgt columns
    CommentNestedSet.reset_column_information
    CommentNestedSet.rebuild!
  end

  def self.down
    remove_column :comment_nested_sets, :parent_id
    remove_column :comment_nested_sets, :lft
    remove_column :comment_nested_sets, :rgt

    # optional fields
    remove_column :comment_nested_sets, :depth
    remove_column :comment_nested_sets, :children_count
  end
end
