class CreateAdministrators < ActiveRecord::Migration
  def change
    create_table :administrators do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
