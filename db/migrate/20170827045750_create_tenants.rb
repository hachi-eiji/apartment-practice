class CreateTenants < ActiveRecord::Migration[5.1]
  def change
    create_table :tenants do |t|
      t.integer :school_id
      t.string :name

      t.timestamps
    end
  end
end
