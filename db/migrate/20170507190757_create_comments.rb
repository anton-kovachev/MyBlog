class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :blog_post_id
      t.string :comment
      t.string :email

      t.timestamps
    end
  end
end
