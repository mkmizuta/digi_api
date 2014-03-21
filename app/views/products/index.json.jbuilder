json.products @products do |product|
  json.id product.id
  json.name product.name
  json.price product.price
  json.image product.image
  json.avatar product.avatar
  json.description product.description
end