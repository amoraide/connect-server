class CreateRoles < ActiveRecord::Migration[6.0]
  def change
    create_table :roles do |t|
      t.string :name
      t.boolean :is_admin, default: false

      t.timestamps
    end

    add_column :users, :role_id, :integer
  end
end
