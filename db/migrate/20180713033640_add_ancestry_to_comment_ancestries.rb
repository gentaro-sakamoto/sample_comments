class AddAncestryToCommentAncestries < ActiveRecord::Migration[5.2]
  def change
    add_column :comment_ancestries, :ancestry, :string
    add_index :comment_ancestries, :ancestry
  end
end
