class DataList < ApplicationRecord
	has_many :analytes
	has_many :data_list_lines, dependent: :destroy
end
