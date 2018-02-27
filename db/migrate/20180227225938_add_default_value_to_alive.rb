class AddDefaultValueToAlive < ActiveRecord::Migration[5.1]
  def change
    change_column :people, :alive, :boolean, default: true
  end
end
