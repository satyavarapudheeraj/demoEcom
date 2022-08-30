class ParametersController < ApplicationController
    authorize_resource class: false
    def index 
        @parameters = Parameter.all

        render json: @parameters, status: :ok
    end

    def create
        @parameter = Parameter.new(parameter_params)

        @parameter.save
        render json: @parameter, status: :created
    end

    def destroy
        @parameter = Parameter.where(id: params[:id]).first
        if @parameter.destroy
            head(:ok)
        else 
            head(:unprocessable_entity)
        end
    end

    private
    def parameter_params
        params.require(:parameter).permit(:parameter_name)
    end
end
