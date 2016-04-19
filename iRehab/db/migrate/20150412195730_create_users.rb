class CreateUsers < ActiveRecord::Migration
    def up
    create_table :users do |t|
	t.column "username", :string, :limit=>10, :null=>false
	t.string "password", :limit=>20, :null =>false
	t.string "email", :null=>false
	t.string "gender", :default=>"M"
	t.string "addressline", :default=>""
	t.string "city", :default=>""
	t.string "state", :default=>""
	t.string "zipcode", :default=>""
	t.string "firstname", :null=>false
	t.string "lastname", :null=>false
	t.string "dateofbirth"
	t.string "phone", limit: 20
	t.timestamps
    end
  end
  def down
	drop_table :users
  end
end
