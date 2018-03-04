class RemovePackersFromPackjob < ActiveRecord::Migration[5.1]
  def change
    remove_column :packjobs, :packers, :string
  end
end
