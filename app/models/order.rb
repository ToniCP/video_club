class Order
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :email, type: String
  field :pay_type, type: Integer

  enum pay_type: {
    "Check" => 0,
    "Credit card" => 1,
    "Purchase order" => 2
  }
end
