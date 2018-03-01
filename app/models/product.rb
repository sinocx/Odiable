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
  pg_search_scope :search_by_ad,
    against: [ :ad ],
    using: {
      tsearch: { prefix: true }
    }

  # geocoded_by :ad, latitude: :ad_latitude, longitude: :ad_longitude
  # after_validation :geocode, if: :will_save_change_to_ad?

  # geocoded_by :aa, latitude: :aa_latitude, longitude: :aa_longitude
  # after_validation :geocode, if: :will_save_change_to_aa?

end

