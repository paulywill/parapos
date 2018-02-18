class Packjobs < ActiveRecord::Migration[5.1]
  def change
      add_reference :packjobs, :rig, foreign_key: true
  end
end
