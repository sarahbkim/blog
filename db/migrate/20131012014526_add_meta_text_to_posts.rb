class AddMetaTextToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :meta_title, :string
    add_column :posts, :meta_desc, :text
  end
end
