class ItemsController < ApplicationController

#before_action :admin_user,     only: :destroy

#let :admin_user, [:index, :edit, :update, :destroy]
 # let :correct_user, [:edit, :update]
 # let :logged_in_user, [:index, :edit, :update, :destroy]

  def show
    @item = Item.find(params[:id])
    
  end
  
  def index
    @items = Item.all
  end
  
  def edit
   @item = Item.find(params[:id])
  end
  
  def update
    @item = Item.find(params[:id])
    if @item.update_attributes(item_params)
    flash[:success] = "Item updated"
      redirect_to @item
    else
      render 'edit'
    end
  end
  
  def destroy
    Item.find(params[:id]).destroy
    flash[:success] = "Item deleted"
    redirect_to items_url
  end

  def new
  end
  
  
  private

    def item_params
      params.require(:item).permit(:name, :description, :price, :image_url)
    end
end
