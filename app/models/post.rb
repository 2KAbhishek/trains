class Post < ApplicationRecord
  after_find :translate
  validates_presence_of :title
  validates_length_of :title, minimum: 2
  has_rich_text :content
  has_many :comments, dependent: :destroy

  private

  def translate
    self.title = I18n.t("posts.title") + ": " + self.title
  end
end
