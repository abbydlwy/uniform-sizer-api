class CreateUniformSizes < ActiveRecord::Migration[7.2]
  def change
    create_table :uniform_sizes do |t|
      t.references :user, null: false, foreign_key: true
      t.references :measurement, null: false, foreign_key: true
      t.references :size_chart, null: false, foreign_key: true
      t.string :final_size_label
      t.string :source

      t.timestamps
    end
  end
end
