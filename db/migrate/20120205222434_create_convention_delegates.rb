class CreateConventionDelegates < ActiveRecord::Migration
  def change
    create_table :convention_delegates do |t|
      t.string :first_name
      t.string :last_name
      t.string :riding
      t.decimal :score

      t.timestamps
    end
  end
end
