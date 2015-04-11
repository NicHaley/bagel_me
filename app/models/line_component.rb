class LineComponent < ActiveRecord::Base
  belongs_to :component
  belongs_to :line_item
end
