class RemoveIntegerFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_column :comments, :integer, :string
  end
end
