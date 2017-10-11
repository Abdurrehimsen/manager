class AddDataListToAnalyte < ActiveRecord::Migration[5.1]
  def change
    add_reference :analytes, :data_list, foreign_key: true
  end
end
