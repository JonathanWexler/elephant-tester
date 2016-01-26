class CreateElephantOwners < ActiveRecord::Migration
  def change
    create_table :elephant_owners do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :city
      t.string :state
      t.datetime :birthday
      t.integer :max_elephant_weight

      t.timestamps null: false
    end
  end
end
