class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.string :first_name
      t.string :last_name
      t.string :paitent_type
      t.string :phone_number
      t.string :email
      t.text :comments

      t.timestamps
    end
  end
end
