class AddUserRefToPackets < ActiveRecord::Migration[6.1]
  def change
    add_reference :packets, :user, null: false, foreign_key: true
  end
end
