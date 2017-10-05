class Analyte < ApplicationRecord
	has_many :veris, dependent: :destroy
end
