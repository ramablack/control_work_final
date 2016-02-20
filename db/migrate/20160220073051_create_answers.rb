class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :answer
      t.string :button

      t.timestamps null: false
    end
  end
end
