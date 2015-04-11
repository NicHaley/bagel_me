class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :item
  has_many :line_components

end
