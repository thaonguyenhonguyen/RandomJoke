class CreateJokes < ActiveRecord::Migration[6.1]
  def change
    create_table :jokes do |t|
      t.text :joke_content

      t.timestamps
    end
  end
end
