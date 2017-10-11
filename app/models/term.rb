class Term < ApplicationRecord
	has_many :data, dependent: :destroy
end
