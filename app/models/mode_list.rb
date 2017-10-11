class ModeList < ApplicationRecord
	has_many :analytes, dependent: :destroy
	has_many :mode_list_lines, dependent: :destroy
end
