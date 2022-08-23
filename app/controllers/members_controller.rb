
class MembersController < ApplicationController
  authorize_resource class: false
  def show
    id = params[:id]
    puts id
    user = User.find_by(id:id)
    render json:user
  end

  def index
    render json: User.all
  end

  def user_params
    params.require(:user).permit(:name, :id, :email, :role)
  end

  def update
    id = params[:id]
    puts id
    user = User.find_by(id:id)
    user.update_attributes(user_params)
    render json:user
  end

  def destroy
    id = params[:id]
    user = User.find_by(id:id)
    if user.destroy
      render json: { message: "Delete Successful" }
    end
  end
end