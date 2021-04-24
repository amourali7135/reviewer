class CreateUserqrs < ActiveRecord::Migration[6.1]
  def change
    create_table :userqrs do |t|
      t.references :feedback, null: false, foreign_key: true
      t.references :review, null: false, foreign_key: true
      t.references :business, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
