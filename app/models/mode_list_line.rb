class ModeListLine < ApplicationRecord
	has_many :modes, dependent: :destroy
	belongs_to :mode_list, optional: true
end
