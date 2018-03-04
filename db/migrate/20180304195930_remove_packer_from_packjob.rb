class RemovePackerFromPackjob < ActiveRecord::Migration[5.1]
  def change
    remove_column :packjobs, :packer, :string
  end
end
