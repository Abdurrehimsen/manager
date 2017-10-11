class AddDataListToDataListLine < ActiveRecord::Migration[5.1]
  def change
    add_reference :data_list_lines, :data_list, foreign_key: true
  end
end
