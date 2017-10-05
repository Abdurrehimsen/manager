class Unit < ApplicationRecord
	has_many :veris, dependent: :destroy
end
