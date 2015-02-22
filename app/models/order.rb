class Order < ActiveRecord::Base
  belongs_to :product
  belongs_to :product_option
  belongs_to :user

  SALES_TAX = 0.09

  def calculate_subtotal
    return product.price * quantity
  end

  def calculate_tax
    return SALES_TAX * calculate_subtotal
  end

  def calculate_total
    return calculate_subtotal + calculate_tax
  end
end
