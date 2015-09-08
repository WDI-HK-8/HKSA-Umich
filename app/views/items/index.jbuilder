json.array! @items do |item|
  json.id item.id
  json.name item.name
  json.price item.price
  json.remark item.remark
  json.category item.category
  json.created_at item.created_at
end