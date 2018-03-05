class Product < ApplicationRecord
  enum status: [:en_cours, :terminée]
  belongs_to :user
  has_one :order
  has_many :offers, dependent: :destroy
  validates :user_id, presence: true
  validates :title, presence: true
  validates :status, presence: true
  mount_uploader :photo, PhotoUploader


  geocoded_by :ad, latitude: :ad_latitude, longitude: :ad_longitude
  after_validation :geocode, if: :will_save_change_to_ad?

  geocoded_by :aa, latitude: :aa_latitude, longitude: :aa_longitude
  after_validation :geocode, if: :will_save_change_to_aa?

  before_save :geocode_endpoints



  include PgSearch
  pg_search_scope :search_by_ad,
    against: [ :ad ],
    using: {
      tsearch: { prefix: true }
    }

  private

  def geocode_endpoints
    if ad_changed?
      geocoded = Geocoder.search(ad).first
      if geocoded
        self.ad_latitude = geocoded.latitude
        self.ad_longitude = geocoded.longitude
      end
    end
    if aa_changed?
      geocoded = Geocoder.search(aa).first
      if geocoded
        self.aa_latitude = geocoded.latitude
        self.aa_longitude = geocoded.longitude
      end
    end
end

  # geocoded_by :ad, latitude: :ad_latitude, longitude: :ad_longitude
  # after_validation :geocode, if: :will_save_change_to_ad?

  # geocoded_by :aa, latitude: :aa_latitude, longitude: :aa_longitude
  # after_validation :geocode, if: :will_save_change_to_aa?

end

