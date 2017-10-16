class AddReagentListToReagentListLines < ActiveRecord::Migration[5.1]
  def change
    add_reference :reagent_list_lines, :reagent_list, foreign_key: true
  end
end
