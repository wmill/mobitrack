class CreateObservations < ActiveRecord::Migration
  def change
    create_table :observations do |t|
      t.references :convention_delegate
      t.references :user
      t.string :ip_address
      t.string :user_agent


      t.timestamps
    end
    add_index :observations, :convention_delegate_id
    add_index :observations, :user_id
  end
end
