class AddReagentListLineToReagent < ActiveRecord::Migration[5.1]
  def change
    add_reference :reagents, :reagent_list_line, foreign_key: true
  end
end
