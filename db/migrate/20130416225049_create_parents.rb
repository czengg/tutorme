class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :first_name
      t.string :last_name
      t.string :gender
      t.string :zip_code
      t.string :email
      t.string :child_subject1
      t.string :child_subject2
      t.string :child_subject3
      t.string :session_fee
      t.string :child_grade

      t.timestamps
    end
  end
end
