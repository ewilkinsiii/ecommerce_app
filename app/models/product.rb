class Product < ActiveRecord::Base
  belongs_to :vendor
  belongs_to :product_option
  belongs_to :user
  has_many :orders
  
  def discount_message
    return "Discount!"
  end
  def on_sale_message
    return "On Sale Item!"
  end

  def sale
    if price > 30.00
      return on_sale_message
       else
       return discount_message
    end
  end

  def tax
   return price * 0.09
  end

  def sales_tax
    return tax 
  end

  def total
   return price + tax
    
  end
end
