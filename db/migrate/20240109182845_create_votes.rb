class CreateVotes < ActiveRecord::Migration[7.0]
  def change
    create_table :votes do |t|
      t.string :direction
      t.string :article_id
      t.string :user_id

      t.timestamps
    end
  end
end
