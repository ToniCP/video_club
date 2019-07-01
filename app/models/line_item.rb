class LineItem
  include Mongoid::Document

  belongs_to :order, optional: true
  belongs_to :product, optional: true
  belongs_to :cart

  def total_price
    product.price
  end
end
