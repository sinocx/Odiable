class Product < ApplicationRecord
  enum status: [:en_cours, :terminée]
  belongs_to :user
  has_one :order
  has_many :offers
  validates :user_id, presence: true
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 15 }
  validates :status, presence: true
  mount_uploader :photo, PhotoUploader

  include PgSearch
  pg_search_scope :search_by_aa,
    against: [ :aa ],
    using: {
      tsearch: { prefix: true }
    }
end

