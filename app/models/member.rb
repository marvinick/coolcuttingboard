class Member < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password validations: false
  validates :password, presence: true, on: :create
end
