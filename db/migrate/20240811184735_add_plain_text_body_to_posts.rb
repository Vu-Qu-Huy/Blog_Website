class AddPlainTextBodyToPosts < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :plain_text_body, :text
  end
end
