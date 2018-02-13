class CreateRigs < ActiveRecord::Migration[5.1]
  def change
    create_table :rigs do |t|
      t.boolean :rig_status
      t.string :rig_type_number
      t.integer :rig_season_jumpnum
      t.date :rig_res_last
      t.string :rig_res_who

      t.timestamps
    end
  end
end
