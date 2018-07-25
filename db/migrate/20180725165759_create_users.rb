class CreateUsers < ActiveRecord::Migration[5.2]
  def change
  	#création de la table users
    create_table :users do |t|
      t.string :name
      t.string :login
      t.string :email

      t.timestamps
    end
  end
end
