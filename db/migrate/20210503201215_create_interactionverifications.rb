class CreateInteractionverifications < ActiveRecord::Migration[6.1]
  def change
    create_table :interactionverifications do |t|
      t.references :business, null: false, foreign_key: true
      t.references :user, null: true, foreign_key: true

      t.timestamps
    end
  end
end
