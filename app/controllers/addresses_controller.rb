class AddressesController < ApplicationController
  authorize_resource class: false
  def address_params
    params.require(:address).permit(:door_no, :user_id, :door_no, :landmark, :pincode, :city, :state)
  end

  def index
    addresses = Address.where(user_id:current_user.id)
    render json: addresses
  end

  def create
    address = Address.new()
    address.user_id = current_user.id
    address.door_no = params[:door_no]
    address.landmark = params[:landmark]
    address.pincode = params[:pincode]
    address.city = params[:city]
    address.state = params[:state]
    address.save
    render json: address
  end

  def update
    address = Address.find_by(id:params[:id])
    if current_user.id != address.user_id
      render json: {
        "Message": "Address ID Doesnt Exist in your addresses"
      }
    end
    address.update_attributes(address_params)
    render json: address
  end

  def destroy
    id = params[:id]
    address = Address.find_by(id:id)
    if current_user.id != address.user_id
      render json: {
        "Message": "Address ID Doesnt Exist in your addresses"
      }
    end
    if address.destroy
      render json: { message: "Delete Successful" }
    end
  end

end