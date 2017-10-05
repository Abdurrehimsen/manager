class CreateUnitListLines < ActiveRecord::Migration[5.1]
  def change
    create_table :unit_list_lines do |t|
      t.string :name
      t.integer :value

      t.timestamps
    end
  end
end
