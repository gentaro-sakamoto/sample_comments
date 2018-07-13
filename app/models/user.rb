class User < ApplicationRecord
  has_many :comment_ancestries
  has_many :comment_nested_sets
  has_many :comment_closures
end
