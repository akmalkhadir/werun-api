class CreateRunners < ActiveRecord::Migration[5.2]
  def change
    create_table :runners do |t|
      t.string :first_name
      t.string :last_name
      t.string :username
      t.string :password_digest

      t.timestamps
    end
  end
end
