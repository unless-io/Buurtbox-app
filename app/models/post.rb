class Post < ApplicationRecord
  validates :content, presence: true
  validates :author, presence: true

  broadcasts_to ->(post) { "posts" }, inserts_by: :prepend
end
