class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.date :dob
      t.integer :ssn
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
