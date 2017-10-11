class AddUnitListToUnitListLine < ActiveRecord::Migration[5.1]
  def change
    add_reference :unit_list_lines, :unit_list, foreign_key: true
  end
end
