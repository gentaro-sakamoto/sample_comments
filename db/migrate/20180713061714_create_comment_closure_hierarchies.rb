class CreateCommentClosureHierarchies < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_closure_hierarchies, id: false do |t|
      t.integer :ancestor_id, null: false
      t.integer :descendant_id, null: false
      t.integer :generations, null: false
    end

    add_index :comment_closure_hierarchies, [:ancestor_id, :descendant_id, :generations],
      unique: true,
      name: "comment_closure_anc_desc_idx"

    add_index :comment_closure_hierarchies, [:descendant_id],
      name: "comment_closure_desc_idx"
  end
end
