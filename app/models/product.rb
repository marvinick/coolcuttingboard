class Product < ActiveRecord::Base
  validates :title, :description, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}

  def self.latest
    Product.order(:updated_at).last
  end
end
