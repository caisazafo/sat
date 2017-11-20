class CreateStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :statuses do |t|
      t.integer :sat_id
      t.float :depth
      t.float :risk

      t.timestamps
    end
  end
end
