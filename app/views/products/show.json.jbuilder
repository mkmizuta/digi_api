json.product do
  json.extract! @product, :id, :name, :price, :image, :avatar, :description
end