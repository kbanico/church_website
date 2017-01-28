class CreatePrayers < ActiveRecord::Migration[5.0]
  def change
    create_table :prayers do |t|
      t.string :name
      t.string :email
      t.string :request_type
      t.string :title
      t.text   :description
      t.timestamps
    end
  end
end
