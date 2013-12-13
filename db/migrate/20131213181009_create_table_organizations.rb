class CreateTableOrganizations < ActiveRecord::Migration
  def change
    create_table :table_organizations do |t|
      t.string :name
      t.string :description
    end
  end
end
