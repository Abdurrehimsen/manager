class CreateModeListLines < ActiveRecord::Migration[5.1]
  def change
    create_table :mode_list_lines do |t|
      t.string :name

      t.timestamps
    end
  end
end
