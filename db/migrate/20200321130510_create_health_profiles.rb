class CreateHealthProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :health_profiles do |t|
      t.references :Profile, null: false, foreign_key: true
      t.decimal :weight
      t.decimal :fat
      t.decimal :total_body_water
      t.decimal :muscle_mass
      t.decimal :bone_weight
      t.decimal :calorie_requirement
      t.decimal :bmi
      t.decimal :visceral_fat
      t.integer :bio_age

      t.timestamps
    end
  end
end
