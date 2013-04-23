class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :zip_code
      t.string :subject1
      t.string :subject2
      t.string :subject3
      t.string :grade
      t.string :gender

      t.timestamps
    end
  end
end
