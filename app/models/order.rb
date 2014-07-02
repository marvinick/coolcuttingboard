class Order < ActiveRecord::Base
  has_many :suppliers
end