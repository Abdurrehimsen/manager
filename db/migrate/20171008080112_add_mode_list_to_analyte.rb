class AddModeListToAnalyte < ActiveRecord::Migration[5.1]
  def change
    add_reference :analytes, :mode_list, foreign_key: true
  end
end
