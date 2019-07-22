class CreateCampers < ActiveRecord::Migration[5.2]
  def change
    create_table :campers do |t|
      t.string :first_name
      t.string :last_name
      t.string :allergies
      t.date :dob
      t.string :camp_session
      t.string :parent_name
      t.string :parent_email
      t.string :parent_phone

      t.timestamps
    end
  end
end
