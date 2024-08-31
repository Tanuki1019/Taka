class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.string :topic
      t.string :genre
      t.text :content

      t.timestamps
    end
  end
end
