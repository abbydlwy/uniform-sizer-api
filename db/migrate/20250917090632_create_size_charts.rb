class CreateSizeCharts < ActiveRecord::Migration[7.2]
  def change
    create_table :size_charts do |t|
      t.string :chart_name
      t.string :gender
      t.string :size_label
      t.decimal :min_height
      t.decimal :max_height
      t.decimal :min_belly_round
      t.decimal :max_belly_round
      t.decimal :min_arm_length
      t.decimal :max_arm_length

      t.timestamps
    end
  end
end
