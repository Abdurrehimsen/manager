class Reagent < ApplicationRecord
	has_many :veris, dependent: :destroy
end
