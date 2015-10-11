class CreateInstitutions < ActiveRecord::Migration
  def change
    create_table :institutions do |t|
      t.string :name
      t.string :mep_number
      t.string :province
      t.string :canton
      t.string :district
      t.string :village
      t.timestamps
    end
  end
end
