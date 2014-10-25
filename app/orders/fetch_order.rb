class FetchOrder
  OrderNotFound = Class.new(StandardError)

  def call(order_id)
    Order.preload(:products).find(order_id)
  rescue ActiveRecord::ActiveRecordError => ex
    raise OrderNotFound.new(ex.message)
  end
end