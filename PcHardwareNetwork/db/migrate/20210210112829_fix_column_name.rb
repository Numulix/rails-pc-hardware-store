class FixColumnName < ActiveRecord::Migration[6.1]
  def change
    rename_column :pc_cases, :type, :case_type
  end
end
