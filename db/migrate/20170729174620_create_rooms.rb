class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      # t.references :comments
      # t.references :users
      t.string :title
    end
  end
end