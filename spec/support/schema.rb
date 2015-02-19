ActiveRecord::Schema.define(:version => 1) do

  create_table :users, :force => true do |t|
    t.column :name,   :string
    t.column :deleted_at, :datetime
  end

end
