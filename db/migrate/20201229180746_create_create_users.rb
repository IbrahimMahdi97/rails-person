class CreateCreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :create_users do |t|
      t.string :email
      t.string :password
      t.string :username
      t.string :message
      t.timestamps
    end
  end
end
