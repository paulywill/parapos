class RemoveRigFromPackjobs < ActiveRecord::Migration[5.1]
  def change
     remove_column :packjobs, :rig
  end
end
