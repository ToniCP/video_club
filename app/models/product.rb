class Product
  include Mongoid::Document
  field :title, type: String
  field :description, type: String
  field :image_url, type: String
  field :date, type: String
  field :price, type: Float

  has_many :line_items
  has_many :comments, dependent: :destroy

  before_destroy :ensure_not_referenced_by_any_line_item

  validates :title, :description, :image_url, :date, presence: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :title, uniqueness: true
  validates :description, length: { minimum: 20 }

  private

    def ensure_not_referenced_by_any_line_item
      unless line_items.empty?
        errors.add(:base, 'Line Items present')
        throw :abort
      end
    end
end
