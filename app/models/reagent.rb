class Reagent < ApplicationRecord
	has_many :data, dependent: :destroy
	belongs_to :reagent_list_line, optional: true
end
