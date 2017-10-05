class CreateDataListLines < ActiveRecord::Migration[5.1]
  def change
    create_table :data_list_lines do |t|
      t.integer :value

      t.timestamps
    end
  end
end
