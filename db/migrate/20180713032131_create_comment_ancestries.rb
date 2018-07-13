class CreateCommentAncestries < ActiveRecord::Migration[5.2]
  def change
    create_table :comment_ancestries do |t|
      t.references :user
      t.references :admin_user
      t.text :message, null: false

      t.timestamps
    end
  end
end
