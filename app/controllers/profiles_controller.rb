class ProfilesController < ApplicationController
  authorize_resource class: false
  def user_params
    params.require(:user).permit(:name, :id, :email, :role)
  end

  def index
      user = current_user
      render json: user
  end

  def update
      id = params[:id]
      user = User.find_by(id:id)
      user.update_attributes(user_params)
      render json: user
  end

  def destroy
      id = params[:id]
      user = User.find_by(id:id)
      if user.destroy
        render json: { message: "Delete Successful" }
      end
  end

  # def my_profile
  #   user = current_user
  #   render json: user
  # end
  #
  # def edit_my_profile
  #   id = current_user.id
  #   user = User.find_by(id:id)
  #   user.update_attributes(user_params)
  #   render json: user
  # end
  #
  # def delete_my_profile
  #   id = current_user.id
  #   user = User.find_by(id:id)
  #   if user.destroy
  #     render json: { message: "Delete Successful" }
  #   end
  # end
end
