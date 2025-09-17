class CreateVideoUploads < ActiveRecord::Migration[7.2]
  def change
    create_table :video_uploads do |t|
      t.references :user, null: false, foreign_key: true
      t.string :video_file_name
      t.integer :video_file_size
      t.string :video_url
      t.string :ai_processing_status
      t.datetime :processed_at
      t.datetime :delete_after

      t.timestamps
    end
  end
end
