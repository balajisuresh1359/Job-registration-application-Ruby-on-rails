class CreateUserdetails < ActiveRecord::Migration[6.1]
  def change
    create_table :userdetails do |t|
      t.string :name
      t.text :address
      t.integer :age
      t.string :email
      t.string :location
      t.string :gender
      t.string :phone
      t.string :skills
      t.string :gegree
      t.string :college
      t.string :password_digest
      t.string :about
      t.string :position
      t.string :desired_pay
      t.string :language
      t.string :programming_language
      t.float :cgpa
      t.text :achievement
      t.text :project

      t.timestamps
    end
  end
end
