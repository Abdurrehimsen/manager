class ReagentList < ApplicationRecord
	has_many :analytes, dependent: :destroy
	has_many :reagent_list_lines, dependent: :destroy
end
