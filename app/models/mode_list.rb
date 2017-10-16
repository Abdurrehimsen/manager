class ModeList < ApplicationRecord
	has_many :analytes
	has_many :mode_list_lines, dependent: :destroy
end
