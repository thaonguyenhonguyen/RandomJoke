class CreateDisLikes < ActiveRecord::Migration[6.1]
  def change
    create_table :dis_likes do |t|
      t.references :joke, null: false, foreign_key: true

      t.timestamps
    end
  end
end
