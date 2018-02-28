class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :products
  has_many :orders
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :age, presence: true
  validates :description, presence: true, length: { minimum: 15 }
  validates :email, presence: true, uniqueness: true
end

