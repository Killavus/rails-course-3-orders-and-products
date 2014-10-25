class FetchProductsList
  def call
    Product.order(:name)
  end
end