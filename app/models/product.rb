class Product < ApplicationRecord
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
