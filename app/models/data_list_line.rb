class DataListLine < ApplicationRecord
	has_many :veris, dependent: :destroy
end
