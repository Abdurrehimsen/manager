class CreateDataLists < ActiveRecord::Migration[5.1]
  def change
    create_table :data_lists do |t|
      t.string :name

      t.timestamps
    end
  end
end
