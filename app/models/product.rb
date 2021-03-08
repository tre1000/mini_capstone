class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  # validates :name, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :description, presence: true, length: { in: 20..500 }
  # validates :stock, presence: true, numericality: { only_integer: true }, numericality: { greater_than: 0 }
  #---------------------
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end

  def is_discounted?
    price <= 20
  end

  def tax
    tax = price * 0.09
  end

  def total
    total = price + (price * 0.09)
  end
end
