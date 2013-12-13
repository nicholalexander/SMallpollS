class CreateTableCampaigns < ActiveRecord::Migration
  def change
    create_table :table_campaigns do |t|
      t.string :name
      t.string :description
    end
  end
end
