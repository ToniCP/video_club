class LineItem
  include Mongoid::Document
  field :quantity, type: Integer
  field :order_id, type: Integer

  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
