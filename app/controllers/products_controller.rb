class ProductsController < ApplicationController
  def index
    products = FetchProductsList.new.()

    render :index, locals: { products: products }
  end
end