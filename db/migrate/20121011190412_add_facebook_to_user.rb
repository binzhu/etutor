class AddFacebookToUser < ActiveRecord::Migration
  def change
    add_column :users, :fb_uid, :string
    add_column :users, :fb_token, :string
    add_column :users, :fb_token_expire, :datetime
  end
end
