class CreateLogos < ActiveRecord::Migration[6.1]
  def change
    create_table :logos do |t|
      t.references :business, null: false, foreign_key: true

      t.timestamps
    end
  end
end
