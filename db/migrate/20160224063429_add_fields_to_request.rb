class AddFieldsToRequest < ActiveRecord::Migration
  def change
    add_column :requests, :response, :string
  end
end
