class AddShareTokenToDocuments < ActiveRecord::Migration[8.0]
  def change
    add_column :documents, :share_token, :string
    add_index :documents, :share_token
  end
end
