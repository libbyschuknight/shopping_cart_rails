class User < ActiveRecord::Base
  has_many :orders
  has_many :products, through: :orders

  validates :email, format: { with: /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+{2,}\z/}
  validates :email, uniqueness: true, presence: true
  validates :password, presence: true

end
