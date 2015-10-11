class CreateLearningSessions < ActiveRecord::Migration
  def change
    create_table :learning_sessions do |t|
      t.string :key_session
      t.belongs_to :group
    end
  end
end
