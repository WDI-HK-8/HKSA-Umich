class ItemsController < ApplicationController
  # See all the items
  def index
    @items = Item.all
  end

  def create
    @item = Item.new(item_params)

    if @item.save
      # render in Jbuilder when the item is created
    else
      render json: { create_item: false}, status: :bad_request
    end
  end

  def update
    @item = Item.find_by_id(params[:id])

    if @item.nil?
      render json: { update_item: false}, status: :not_found
    else
      @item.update(item_params)
    end
  end

  def show
    @item = Item.find_by_id(params[:id])

    if @item.nil?
      render json: { found_item: false}, status: :not_found
    end
  end

  def destroy
    @item = Item.find_by_id(params[:id])

    if @item.nil?
      render json: { destroy_item: false}, status: :not_found
    else
      if @item.destroy
        render json: { destroy_item: true}, status: :no_content
      else
        render json: { destroy_item: false}, status: :bad_request
      end
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :price, :category, :remark)
  end
end
