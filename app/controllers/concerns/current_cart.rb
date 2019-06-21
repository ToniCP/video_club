module CurrentCart
  private
    def set_cart
    #  @cart = Cart.find(session[:cart_id])
    #rescue Mongoid::Errors::DocumentNotFound
    #  @cart = Cart.create
    #  session[:cart_id] = @cart.id
      if !session[:cart_id].nil?
        @cart = Cart.find(session[:cart_id])
      else
        @cart = Cart.create
        session[:cart_id] = @cart.id
      end
    end
end
