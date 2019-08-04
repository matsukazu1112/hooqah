class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.integer :question_id, null: false
      t.text :text, null: false
      t.timestamps
    end
  end
end
