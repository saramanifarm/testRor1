class AddTimestampToArti < ActiveRecord::Migration[6.1]
  def change
    add_column :artis, :created_time_at, :datetime
    add_column :artis, :updated_time_at, :datetime
  end
end
