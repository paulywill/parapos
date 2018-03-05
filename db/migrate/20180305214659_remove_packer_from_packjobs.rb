class RemovePackerFromPackjobs < ActiveRecord::Migration[5.1]
  def change
    remove_column :packjobs, :packer
  end
end
