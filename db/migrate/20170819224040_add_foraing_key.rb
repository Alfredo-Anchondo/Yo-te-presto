class AddForaingKey < ActiveRecord::Migration[5.1]
  add_column :requisitions, :profile_id, :integer
  add_foreign_key :requisitions, :profiles
end
