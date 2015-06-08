class AddIndexToUrls < ActiveRecord::Migration
  def change
    add_index :urls, :short
  end
end
