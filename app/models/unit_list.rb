class UnitList < ApplicationRecord
	has_many :analytes
	has_many :unit_list_lines, dependent: :destroy
end
