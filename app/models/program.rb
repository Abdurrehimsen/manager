class Program < ApplicationRecord
	has_many :data, dependent: :destroy
	has_many :analytes, dependent: :destroy
end
