class CreateFeeds < ActiveRecord::Migration
  def self.up
    create_table :feeds do |t|
      t.string :host
      t.string :path
      t.string :username
      t.string :password
      t.string :token

      t.timestamps
    end
  end

  def self.down
    drop_table :feeds
  end
end
