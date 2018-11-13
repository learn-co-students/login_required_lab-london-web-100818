class CreateSecrets < ActiveRecord::Migration
  def change
    create_table :secrets do |t|
      t.string :phrase

      t.timestamps null: false
    end
  end
end
