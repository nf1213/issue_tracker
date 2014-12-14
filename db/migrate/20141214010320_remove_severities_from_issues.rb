class RemoveSeveritiesFromIssues < ActiveRecord::Migration
  def change
    remove_column :issues, :severities, :string
  end
end
