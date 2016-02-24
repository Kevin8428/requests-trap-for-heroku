class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :req_date
      t.string :string
      t.string :remote_ip
      t.string :string
      t.string :request_method
      t.string :string
      t.string :scheme
      t.string :string
      t.string :query_string
      t.string :string
      t.string :query_params
      t.string :string
      t.string :cookies
      t.string :string
      t.string :headers
      t.string :string

      t.timestamps null: false
    end
  end
end
