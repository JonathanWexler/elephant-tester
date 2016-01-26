class AddColumnToElephant < ActiveRecord::Migration
  def change
    add_column :elephant_owners, :testing_elephant, :boolean
  end
end
