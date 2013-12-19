class ChangeTableName < ActiveRecord::Migration
  def change
    rename_table :table_campaigns, :campaigns
    rename_table :table_organizations, :organizations
  end
end
