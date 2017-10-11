class ReagentListLine < ApplicationRecord
	has_many :reagents, dependent: :destroy
	belongs_to :reagent_list, optional: true
end
