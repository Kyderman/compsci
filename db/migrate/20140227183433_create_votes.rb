class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.boolean :upvote
      t.string :ip
      t.integer :post_id

      t.timestamps
    end
  end
end
