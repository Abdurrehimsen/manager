class AddProgramToAnalyte < ActiveRecord::Migration[5.1]
  def change
    add_reference :analytes, :program, foreign_key: true
  end
end
