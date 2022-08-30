class CartsController < ApplicationController
  def index
    @cart = @current_cart
    render json: {message: @cart}, status: :ok
  end
  def destroy
    @cart = @current_cart
    @cart.destroy
    session[:cart_id] = nil
    render json: {message: "deleted Successfully"}, status: :ok
  end
end
