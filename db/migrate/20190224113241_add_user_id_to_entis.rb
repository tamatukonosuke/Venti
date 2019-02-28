class AddUserIdToEntis < ActiveRecord::Migration[5.2]
  def change
    add_column :entis, :user_id, :integer
  end
end
