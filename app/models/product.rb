class Product < ApplicationRecord
  belongs_to :supplier
  has_many :images
  has_many :orders
  # validates :name, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :description, presence: true, length: { in: 20..500 }
  # validates :stock, presence: true, numericality: { only_integer: true }, numericality: { greater_than: 0 }
  #---------------------
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
end
