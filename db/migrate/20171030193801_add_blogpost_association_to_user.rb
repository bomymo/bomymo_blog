class AddBlogpostAssociationToUser < ActiveRecord::Migration[5.1]
  def change
    change_table :blogposts do |t|
      t.references :user, foreign_key: true
    end
  end
end
