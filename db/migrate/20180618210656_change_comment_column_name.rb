class ChangeCommentColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :comments, :doctor_id_id, :doctor_id
  end
end
