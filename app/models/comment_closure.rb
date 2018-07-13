class CommentClosure < ApplicationRecord
  has_closure_tree
  belongs_to :user, optional: true
  belongs_to :admin_user, optional: true
end
