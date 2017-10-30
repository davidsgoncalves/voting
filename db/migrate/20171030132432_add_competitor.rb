class AddCompetitor < ActiveRecord::Migration[5.0]
  def change
    create_table :competitors do |t|
      t.string :name
      t.string :image_url

      t.timestamps
    end

    create_table :voters do |t|
      t.string :name
      t.string :email
      t.references :competitor
      t.boolean :vote

      t.timestamps
    end

  end
end
