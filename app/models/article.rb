class Article < ApplicationRecord
  has_rich_text :content
  has_one_attached :photo

  validates :title, presence: true
  validates :photo, presence: true
  validates :content, presence: true

  scope :ordered_by_creation_reverse, -> { order(:created_at).reverse_order }
end
