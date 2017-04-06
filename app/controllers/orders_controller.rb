class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
    before_action :authenticate_user!

  def index
    @user = ProductPolicy.current_user
    #authorize @user
    #@orders = Order.all
    @orders = @user.orders
    @orders = Order.all if @user.admin
  end

  def show
  end

  def new
    @product = Product.find(product_params)
    @user = User.find(user_params)
    @order = Order.new()
    @order.payment_stage = 'not_submited'
    #@order.products << @product
    @product.orders << @order
    @user.orders << @order
    @order.user_id = @user.id

  end

  def edit
  end

  def create
    @order = Order.new(order_params)
    @user = User.find(ProductPolicy.current_user)
    @order.user_id = @user.id
    @order.payment_stage = 1
    @user.orders << @order
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:total_cost, :payment_stage)
    end

    def product_params
      params.require(:product_id)
    end

    def user_params
      params.require(:user_id)
    end
end
