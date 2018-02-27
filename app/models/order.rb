class Order < ApplicationRecord
  belongs_to :user
  belongs_to :product
  validates :checkin, presence: true
  validates :checkout, presence: true
  validates :aa, presence: true
  validates :ad, presence: true
  validates :checkin, presence: true
  validates :uniquekey, presence: true, uniqueness: true
  validates :user_id, presence: true
  validates :product_id, presence: true
end
