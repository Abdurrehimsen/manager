class Term < ApplicationRecord
	has_many :veris, dependent: :destroy
end
