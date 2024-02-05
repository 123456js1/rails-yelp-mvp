class DropReviewsTable < ActiveRecord::Migration[7.1]
  def up
    drop_table :reviews if ActiveRecord::Base.connection.table_exists? 'reviews'
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
