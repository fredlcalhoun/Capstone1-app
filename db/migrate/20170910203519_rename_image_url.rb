class RenameImageUrl < ActiveRecord::Migration[5.1]
  def change
    rename_column :images, :url, :online_url
  end
end
