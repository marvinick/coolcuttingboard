class Order < ActiveRecord::Base
  has_many :suppliers
  validates :name, :address, :email, presence: true
end