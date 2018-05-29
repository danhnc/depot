class Order < ApplicationRecord
	has_many :line_items, dependent: :destroy

	enum pay_type: {
	    "Check"          => 0, 
	    "Credit card"    => 1, 
	    "Purchase order" => 2
  	}

  validates :name, :address, :email, presence: true
  validates :pay_type, inclusion: pay_types.keys
  # validates :ship_date, presence: true, if: :ship_date_if_ship_checked

  def add_line_items_from_cart(cart)
    cart.line_items.each do |item|
      item.cart_id = nil
      line_items << item
    end
  end

  # def ship_date_if_ship_checked(params_ship)
  #   puts "+++++++++++++++"
  #   puts params_ship
  #   if params_ship.eql? '1'
  #     return true
  #   else
  #     return false
  #   end
  # end


end
