class AddIndexToAdministratorsEmail < ActiveRecord::Migration
  def change
        add_index :administrators, :email, unique: true
      end
end
