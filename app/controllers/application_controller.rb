class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper

def euro(price)
  number_to_currency(price, :unit => "€")
end

  
 private 
  def current_cart
Cart.find(session[:cart_id])
rescue ActiveRecord::RecordNotFound
cart = Cart.create
session[:cart_id] = cart.id
cart
end



    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
        store_location
        flash[:danger] = "Please log in."
        redirect_to login_url
      end
    end
end
