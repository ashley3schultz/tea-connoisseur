class CreateTeas < ActiveRecord::Migration
  def change
    create_table :teas do |t|
      t.string  "name"
      t.string  "aka"
      t.string  "oxidation"
      t.string  "details"
      t.integer "user_id"
    end
  end
end
