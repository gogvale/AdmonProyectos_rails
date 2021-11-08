class AddProfilePicToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :profile_pic_url, :string, default: 'https://i.imgur.com/hepj9ZS.png'
  end
end
