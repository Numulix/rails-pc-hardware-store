class RemoveCaseIdFromBuilds < ActiveRecord::Migration[6.1]
  def change
    remove_column :builds, :case_id, :integer
  end
end
