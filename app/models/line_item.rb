class LineItem
  include Mongoid::Document
  field :quantity, type: Integer

  belongs_to :product
  belongs_to :cart

  def total_price
    product.price * quantity
  end
end
