class AddUnitListToAnalyte < ActiveRecord::Migration[5.1]
  def change
    add_reference :analytes, :unit_list, foreign_key: true
  end
end
