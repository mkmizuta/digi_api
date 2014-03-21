class ItemsController < ApplicationController

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end

  def create
    @item = ItemForm.new(params[:item]).item
    if @item.save
      render :show
    end
  end

  def update
    @item = Item.find(params[:id])
    @item.update(ItemForm.new(params[:item]).permitted_values)
    @item.save
    render :index
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    render :index
  end
end
