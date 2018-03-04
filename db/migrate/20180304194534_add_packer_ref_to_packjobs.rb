class AddPackerRefToPackjobs < ActiveRecord::Migration[5.1]
  def change
    add_reference :packjobs, :packer, foreign_key: true
  end
end
