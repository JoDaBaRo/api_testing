class ItemSerializer
	include FastJsonapi::ObjectSerializer
	set_type :item
	attributes :name, :done, :created_at
	belongs_to :todo
end