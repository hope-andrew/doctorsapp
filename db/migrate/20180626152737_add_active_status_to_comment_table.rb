class AddActiveStatusToCommentTable < ActiveRecord::Migration[5.0]
  def change
    add_column :comments, :active, :boolean
  end
end
