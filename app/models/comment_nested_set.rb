class CommentNestedSet < ApplicationRecord
  acts_as_nested_set
  belongs_to :user, optional: true
  belongs_to :admin_user, optional: true
end
