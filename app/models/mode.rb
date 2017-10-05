class Mode < ApplicationRecord
	has_many :veris, dependent: :destroy
end
