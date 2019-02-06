PRODUCTS = [
  { name: "Thinkpad x220", price: 220 },
  { name: "Thinkpad x230", price: 250 },
  { name: "Thinkpad x240", price: 978 },
  { name: "Thinkpad x210", price: 300 },
  { name: "Thinkpad x220", price: 330 },
  { name: "Thinkpad x220", price: 700 },
  { name: "Macbook Leopard", price: 300 },
  { name: "Macbook Pro", price: 700 },
  { name: "Macbook Air", price: 900 },
  { name: "Macbook", price: 1440 },
  { name: "Dell Latitude", price: 200 },
  { name: "Dell Latitude", price: 650 },
  { name: "Dell Inspirion", price: 300 },
  { name: "Dell Inspirion", price: 450 },
]

query1 = {
  price_min: 240,
  price_max: 280,
  q: 'thinkpad'
}

query2 = {
  price_min: 300,
  price_max: 450,
  q: 'dell'
}

# select product
# if product_name.lowercase include? query[:q] and
#  product_price is included in the range (price_min..price_max)

def search(query)
  PRODUCTS.select do |product|
    product[:name].downcase.include?(query[:q]) &&
    (query[:price_min]..query[:price_max]).include?(product[:price])
  end
end

puts search(query1)
# [{ name: "Thinkpad x230", price: 250 }]
puts search(query2)
# [{ name: "Dell Inspirion", price: 300 }, { name: "Dell Inspirion", price: 450 }]