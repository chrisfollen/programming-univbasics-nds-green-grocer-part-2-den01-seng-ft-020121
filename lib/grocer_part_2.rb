require_relative './part_1_solution.rb'
require 'pry'

def apply_coupons(cart, coupons)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  #con_cart = consolidate_cart(cart)
  cart_out = cart
  i = 0 
  while i < cart.length do
    name = cart[i][:item]
    coupon_index = coupons.find_index{|x| x[:item] == name}
    if coupon_index != nil 
      count = cart[i][:count]
      num = coupons[coupon_index][:num]
      if count >= num
        new_price = coupons[coupon_index][:cost]/num
        cart_out[i][:count] = count - num
        discounted_hash = {
          item: "#{name} W/COUPON",
          price: new_price,
          clearance: cart[i][:clearance],
          count: num
        }
        cart_out.push(discounted_hash)
      end
    end
  i += 1   
  end
  # cart_out.delete_if{ |z| z[:count] == 0}
  #binding.pry
  cart_out
end

cart_in = [
  {:item => "AVOCADO", :price => 3.00, :clearance => true, :count => 3},
  {:item => "KALE",    :price => 3.00, :clearance => false, :count => 1}
]

coup_in = [
  {:item => "AVOCADO", :num => 2, :cost => 5.00}
]

#apply_coupons(cart_in, coup_in)


def apply_clearance(cart)
  # Consult README for inputs and outputs
  #
  # REMEMBER: This method **should** update cart
  
end

def checkout(cart, coupons)
  # Consult README for inputs and outputs
  #
  # This method should call
  # * consolidate_cart
  # * apply_coupons
  # * apply_clearance
  #
  # BEFORE it begins the work of calculating the total (or else you might have
  # some irritated customers
end
