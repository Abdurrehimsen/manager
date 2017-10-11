class Unit < ApplicationRecord
	has_many :data, dependent: :destroy
	belongs_to :unit_list_line, optional: true
end
