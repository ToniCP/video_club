class SecondComment
  include Mongoid::Document
  field :body, type: String
  belongs_to :user
  belongs_to :product
end
