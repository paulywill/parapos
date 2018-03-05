class AddPackerToPackjobs < ActiveRecord::Migration[5.1]
  def change
    add_column :packjobs, :packer, :string
  end
end
