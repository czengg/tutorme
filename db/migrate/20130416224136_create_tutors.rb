class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :zip_code
      t.string :email
      t.string :subject1
      t.string :subject2
      t.string :subject3
      t.string :session_fee
      t.string :grade

      t.timestamps
    end
  end
end
