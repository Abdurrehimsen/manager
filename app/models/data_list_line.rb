class DataListLine < ApplicationRecord
	has_many :data, dependent: :destroy
	has_many :units, dependent: :destroy
	belongs_to :data_list, optional: true
end
