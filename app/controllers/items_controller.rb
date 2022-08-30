class ItemsController < ApplicationController
    load_and_authorize_resource
    def index
        @items = Item.all

        render json: @items, status: :ok
    end
    def create
        @item = Item.new(item_params)

        @item.save   
        render json: @item, status: :created
    end
    def destroy
        @item = Item.where(id: params[:id]).first
        if @item.destroy
            render json: { message: "Deleted Successful"}
        else
            head(:unprocessable_entity)
        end
    end
    def update
        @item = Item.where(id: params[:id]).first
        @item.update_attributes(item_params)
        render json: { message: @item }, status: :ok
    end
    private
    def item_params
        params.require(:item).permit(:name, :brand, :quantity, :mrp, :selling_price, :tags, :sku, :level_type, :description, :parameter_name)
    end
end
