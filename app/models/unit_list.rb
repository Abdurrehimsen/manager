class UnitList < ApplicationRecord
	has_many :analytes, dependent: :destroy
	has_many :unit_list_lines, dependent: :destroy
end
