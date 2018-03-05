class AddRigToPackjobs < ActiveRecord::Migration[5.1]
  def change
    add_column :packjobs, :rig, :string
  end
end
