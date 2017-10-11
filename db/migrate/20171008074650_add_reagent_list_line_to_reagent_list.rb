class AddReagentListLineToReagentList < ActiveRecord::Migration[5.1]
  def change
    add_reference :reagent_lists, :reagent_list, foreign_key: true
  end
end
