class CreateMeasurements < ActiveRecord::Migration[7.2]
  def change
    create_table :measurements do |t|
      t.references :user, null: false, foreign_key: true
      t.references :video_upload, null: false, foreign_key: true
      t.decimal :height
      t.decimal :belly_round
      t.decimal :arm_length
      t.string :source

      t.timestamps
    end
  end
end
