class ChangeweightTypeOfPackets < ActiveRecord::Migration[6.1]
  def change
    change_column :packets, :weight, :float
  end
end
