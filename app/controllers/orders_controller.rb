class OrdersController < ApplicationController
  def index
    @orders = Order.all.order('created_at DESC')
  end

  def show
    @order = Order.find(params[:id])
  end

  def new
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)

    if @order.save
      redirect_to @order
    else
      render :new
    end
  end

  def edit
    @order = Order.find(params[:id])
  end

  def update
    @order = Order.find(params[:id])

    if @order.update(order_params)
      redirect_to @order
    else
      render :edit
    end
  end

  def destroy
    @order = Order.find(params[:id])

    @order.destroy
    redirect_to orders_path
  end

  private

  def order_params
    params.require(:order).permit(:order_no, :client, :address, :phone, :project, :email)
  end
end
