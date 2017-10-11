class AddModeListLineToMode < ActiveRecord::Migration[5.1]
  def change
    add_reference :modes, :mode_list_line, foreign_key: true
  end
end
