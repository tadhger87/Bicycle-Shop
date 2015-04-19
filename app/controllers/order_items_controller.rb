class OrderItemsController < ApplicationController
 
 before_action :set_order_item, only: [:show, :edit, :update, :destroy]

  
  def index
    @order_items = OrderItem.all
  end

 
  def show
  end


  def new
    @ordere_item = OrderItem.new
  end


  def edit
  end

 
  def create
    @cart = current_cart
    product = Product.find(params[:product_id])
    @order_item = @cart.add_product(product.id)

    respond_to do |format|
      if @order_item.save
        format.html { redirect_to @order_item.cart }
        flash[:info] = "Added to cart."
        format.js { @current_item = @line_item }
        format.json { render :show, status: :created, location: @order_item }
      else
        format.html { render :new }
        format.json { render json: @order_item.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    respond_to do |format|
      if @order_item.update(order_item_params)
        format.html { redirect_to @order_item, notice: 'order item was successfully updated.' }
        format.json { render :show, status: :ok, location: @order_item }
      else
        format.html { render :edit }
        format.json { render json: @order_item.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @order_item.destroy
    respond_to do |format|
      format.html { redirect_to order_items_url, notice: 'Order item was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    
    def set_order_item
      @order_item = OrderItem.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_item_params
      params.require(:order_item).permit(:product_id, :cart_id)
    end
end
