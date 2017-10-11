class AddReagentListToAnalyte < ActiveRecord::Migration[5.1]
  def change
    add_reference :analytes, :reagent_list, foreign_key: true
  end
end
