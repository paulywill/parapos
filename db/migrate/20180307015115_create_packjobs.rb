class CreatePackjobs < ActiveRecord::Migration[5.1]
  def change
    create_table :packjobs do |t|
      t.references :packer, foreign_key: true
      t.references :rig, foreign_key: true

      t.timestamps
    end
  end
end
