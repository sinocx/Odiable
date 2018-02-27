class Transporter < ApplicationRecord
  belongs_to :user
  has_many :offers
  validates :user_id, presence: true
  validates :car, presence: true
  validates :capacity, presence: true
  validates :permit, presence: true
  validates :cin, presence: true
end
