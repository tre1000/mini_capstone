class Product < ApplicationRecord
  belongs_to :supplier
  has_many :category_products
  has_many :categories, through: :category_products
  has_many :images
  
  has_many :carted_products,
  has_many :orders, through :carted_products
  has_many :users, through :carted_products
  # validates :name, presence: true, uniqueness: true
  # validates :price, presence: true, numericality: { greater_than: 0 }
  # validates :description, presence: true, length: { in: 20..500 }
  # validates :stock, presence: true, numericality: { only_integer: true }, numericality: { greater_than: 0 }
  #---------------------
  # def supplier
  #   Supplier.find_by(id: supplier_id)
  # end
end
