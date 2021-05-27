class CreateWeddingPlans < ActiveRecord::Migration[6.1]
  def change
    create_table :wedding_plans do |t|
      t.string :bride
      t.string :groom
      t.references :tenant, null: false, foreign_key: true
      t.datetime :weddingDate

      t.timestamps
    end
  end
end
