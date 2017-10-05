class DestroyVeris < ActiveRecord::Migration[5.1]
  def change
  	drop_table :veris
  end
end
