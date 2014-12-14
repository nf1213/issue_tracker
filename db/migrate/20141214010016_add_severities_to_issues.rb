class AddSeveritiesToIssues < ActiveRecord::Migration
  def change
    add_column :issues, :severities, :string
  end
end
