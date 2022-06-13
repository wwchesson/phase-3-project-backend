class CreateResidents < ActiveRecord::Migration[6.1]
  def change
    create_table :residents do |t|
      t.string :name
      t.integer :ssn
      t.integer :age
      t.string :email
      t.text :needs
      t.text :interests
    end
  end
end
