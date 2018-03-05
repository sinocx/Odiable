class Offer < ApplicationRecord
  enum status: ["En attente", "Validé", "Refusé"]
  belongs_to :product
  belongs_to :transporter
  # belongs_to :user, through: :transporter
  validates :price, presence: true
  validates :description, presence: true, length: { minimum: 15 }
  # monetize :price_cents

end
