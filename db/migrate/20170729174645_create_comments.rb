class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.references :user
      t.references :room
      t.string :content
      t.datetime :date
    end
  end
end
