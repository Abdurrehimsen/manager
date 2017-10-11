class Mode < ApplicationRecord
	has_many :data, dependent: :destroy
	belongs_to :mode_list_line, optional: true
end
