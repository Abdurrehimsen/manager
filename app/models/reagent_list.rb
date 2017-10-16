class ReagentList < ApplicationRecord
	has_many :analytes
	has_many :reagent_list_lines, dependent: :destroy
end
