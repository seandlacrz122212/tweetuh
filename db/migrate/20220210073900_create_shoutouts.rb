class CreateShoutouts < ActiveRecord::Migration[7.0]
  def change
    create_table :shoutouts do |t|
      t.string :name
      t.string :usrname
      t.string :body

      t.timestamps
    end
  end
end
