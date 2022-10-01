class CreateImages < ActiveRecord::Migration[7.0]
  def change
    create_table :images do |t|
      t.string :title

      t.float :waldo_width_upper
      t.float :waldo_width_lower
      t.float :waldo_height_upper
      t.float :waldo_height_lower

      t.float :wizard_width_upper
      t.float :wizard_width_lower
      t.float :wizard_height_upper
      t.float :wizard_height_lower

      t.float :wilma_width_upper
      t.float :wilma_width_lower
      t.float :wilma_height_upper
      t.float :wilma_height_lower

      t.float :odlaw_width_upper
      t.float :odlaw_width_lower
      t.float :odlaw_height_upper
      t.float :odlaw_height_lower
      
      t.timestamps
    end
  end
end
