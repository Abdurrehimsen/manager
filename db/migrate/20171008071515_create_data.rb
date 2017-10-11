class CreateData < ActiveRecord::Migration[5.1]
  def change
    create_table :data do |t|
      t.integer :value
      t.boolean :is_str
      t.belongs_to :user, foreign_key: true
      t.belongs_to :term, foreign_key: true
      t.belongs_to :program, foreign_key: true
      t.belongs_to :analyte, foreign_key: true
      t.belongs_to :unit, foreign_key: true
      t.belongs_to :mode, foreign_key: true
      t.belongs_to :reagent, foreign_key: true
      t.belongs_to :data_list_line, foreign_key: true

      t.timestamps
    end
  end
end
