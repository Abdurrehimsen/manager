class Program < ApplicationRecord
	has_many :veris, dependent: :destroy
end
