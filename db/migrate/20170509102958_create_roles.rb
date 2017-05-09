class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
      t.references :actor, index: true, foreign_key: true
      t.references :film, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
