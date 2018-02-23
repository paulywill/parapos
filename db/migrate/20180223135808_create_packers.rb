class CreatePackers < ActiveRecord::Migration[5.1]
  def change
    create_table :packers do |t|
      t.string :name
      t.date :rating_date
      t.boolean :team

      t.timestamps
    end
  end
end
