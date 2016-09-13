class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :nation
      t.integer :size
      t.integer :medals

      t.timestamps null: false
    end
  end
end
