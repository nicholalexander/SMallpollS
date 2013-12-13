class AddForiegnKeyToCampaign < ActiveRecord::Migration
  def up
    #table, column, type
    add_column :campaigns, :organization_id, :integer

    execute <<-SQL
      ALTER TABLE campaigns
        ADD CONSTRAINT fk_campaigns_organizations
        FOREIGN KEY (organization_id)
        REFERENCES organizations(id);
    SQL
  end

  def down
    execute <<-SQL
      ALTER TABLE campaigns
      DROP FOREIGN KEY fk_campaigns_organizations;
    SQL

    remove_column :organization_id
  end

end
