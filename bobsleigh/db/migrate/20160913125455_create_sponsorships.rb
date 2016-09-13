class CreateSponsorships < ActiveRecord::Migration
  def change
    create_table :sponsorships do |t|
      t.references :athlete, index: true, foreign_key: true
      t.references :sponsor, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
