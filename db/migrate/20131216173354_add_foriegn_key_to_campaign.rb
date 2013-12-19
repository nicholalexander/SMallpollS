class AddForiegnKeyToCampaign < ActiveRecord::Migration
  
  def up
    
    add_column :campaigns, :organization_id, :integer

    execute <<-SQL
      ALTER TABLE campaigns
        ADD CONSTRAINT fk_campaigns_organizations
        FOREIGN KEY (organization_id)
        REFERENCES organizations(id);
    SQL
  end

  def down

    remove_column :campaigns, :organization_id, :integer

    execute <<-SQL
        ALTER TABLE votes
        DROP FOREIGN KEY fk_votes_proclamations;
    SQL
  end

end
