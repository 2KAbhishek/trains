class Post < ApplicationRecord
  validates_presence_of :title
  validates_length_of :title, minimum: 2
  has_rich_text :content
  has_many :comments, dependent: :destroy
end
