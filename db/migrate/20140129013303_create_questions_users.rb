class CreateQuestionsUsers < ActiveRecord::Migration
  def change
    create_table :questions_users do |t|
      t.integer :user_id
      t.integer :question_id

      t.timestamps
    end
  end
end
