class CreateTweets < ActiveRecord::Migration[5.0]
  def change
    create_table :tweets do |t|
      t.string :tweet
      t.string :description
      t.boolean :status

      t.timestamps
    end
  end
end
