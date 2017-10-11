class AddUnitListLineToUnit < ActiveRecord::Migration[5.1]
  def change
    add_reference :units, :unit_list_line, foreign_key: true
  end
end
