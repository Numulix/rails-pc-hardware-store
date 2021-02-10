class DropPcCasesTable < ActiveRecord::Migration[6.1]
  def change
    drop_table :pc_cases
  end
end
