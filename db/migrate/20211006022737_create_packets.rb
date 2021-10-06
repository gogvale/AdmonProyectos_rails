class CreatePackets < ActiveRecord::Migration[6.1]
  def change
    create_table :packets do |t|
      t.string :name
      t.integer :weight
      t.integer :status

      t.timestamps
    end
  end
end
