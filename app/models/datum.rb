class Datum < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :term, optional: true
  belongs_to :program, optional: true
  belongs_to :analyte, optional: true
  belongs_to :unit, optional: true
  belongs_to :mode, optional: true
  belongs_to :reagent, optional: true
  belongs_to :data_list_line, optional: true
end
