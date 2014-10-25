class OrdersController < ApplicationController
  def show
    order = FetchOrder.new.(params[:id])
    render :show, locals: { order: order }
  rescue FetchOrder::OrderNotFound => error
    render :not_found, locals: { message: error.message }
  end
end