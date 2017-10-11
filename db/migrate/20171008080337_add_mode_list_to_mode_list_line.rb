class AddModeListToModeListLine < ActiveRecord::Migration[5.1]
  def change
    add_reference :mode_list_lines, :mode_list, foreign_key: true
  end
end
