class Article < ApplicationRecord
  has_rich_text :content
  has_one_attached :photo

  validates :title, presence: true
  validates :photo, presence: true
  validates :content, presence: true

  scope :ordered_by_creation_reverse, -> { order(:created_at).reverse_order }

  include PgSearch::Model
  pg_search_scope :search_by_title_and_content,
    against: [ :title, :content ],
    using: {
      tsearch: { prefix: true } # <-- now `superman batm` will return something!
    }

    paginates_per 6
end
