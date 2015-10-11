class UpdateUsersAndInstitutionsToHandleAssociation < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.change :created_at, :datetime, null: false
      t.change :updated_at, :datetime, null: false
    end

    change_table :institutions do |t|
      t.change :created_at, :datetime, null: false
      t.change :updated_at, :datetime, null: false
    end

    create_table :institutions_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :institution, index: true
    end
  end

  def down
    change_table :users do |t|
      t.change :created_at, :datetime
      t.change :updated_at, :datetime
    end

    change_table :institutions do |t|
      t.change :created_at, :datetime
      t.change :updated_at, :datetime
    end


    drop_table :institutions_users, id: false do |t|
      t.belongs_to :user, index: true
      t.belongs_to :institution, index: true
    end
  end
end
