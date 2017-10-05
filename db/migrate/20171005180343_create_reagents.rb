class CreateReagents < ActiveRecord::Migration[5.1]
  def change
    create_table :reagents do |t|
      t.string :name

      t.timestamps
    end
  end
end
