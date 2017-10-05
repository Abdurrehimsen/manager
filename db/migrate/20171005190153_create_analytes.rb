class CreateAnalytes < ActiveRecord::Migration[5.1]
  def change
    create_table :analytes do |t|
      t.string :name

      t.timestamps
    end
  end
end
