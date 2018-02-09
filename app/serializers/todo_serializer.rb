class TodoSerializer 
	include FastJsonapi::ObjectSerializer
	set_type :todo
	attributes :title, :created_by, :created_at, :updated_at
	has_many :items, serializer: :item_serializer
end

class ItemSerializer
	include FastJsonapi::ObjectSerializer
	set_type :item
	attributes :name, :done, :created_at
	belongs_to :todo
end