class DataList < ApplicationRecord
	has_many :analytes, dependent: :destroy
	has_many :data_list_lines, dependent: :destroy
end
