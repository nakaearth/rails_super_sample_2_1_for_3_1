class CreateMails < ActiveRecord::Migration
  def change
    create_table :mails do |t|
      t.string :mailAddress
      t.integer :user_id

      t.timestamps
    end
  end
end
