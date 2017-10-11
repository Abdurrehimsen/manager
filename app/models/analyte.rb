class Analyte < ApplicationRecord
	has_many :data, dependent: :destroy
	belongs_to :program, optional: true
	belongs_to :reagent_list, optional: true
	belongs_to :unit_list, optional: true
	belongs_to :mode_list, optional: true
	belongs_to :data_list, optional: true
end
