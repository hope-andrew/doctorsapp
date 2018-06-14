class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.references :doctor_id, foreign_key: true
      t.text :comment_body
      t.integer :rating
      t.integer :author_id

      t.timestamps
    end
  end
end
