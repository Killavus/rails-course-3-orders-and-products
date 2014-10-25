module ApplicationHelper
  def present_product_price(price)
    price_floated = price / 100.0

    "%.2f $" % [price_floated]
  end
end
