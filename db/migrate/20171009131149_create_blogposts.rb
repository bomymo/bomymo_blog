class CreateBlogposts < ActiveRecord::Migration[5.1]
  def change
    create_table :blogposts do |t|
      t.string :subject
      t.text :blogentry
      t.string :author
      t.date :blogdate
      t.string :image_url

      t.timestamps
    end
  end
end
