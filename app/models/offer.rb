class Offer < ApplicationRecord

  belongs_to :product
  belongs_to :transporter
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 15 }
end
