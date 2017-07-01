Product.destroy_all
Review.destroy_all

20.times do |i|
  product = Product.create!(
    name: Faker::Commerce.product_name,
    cost: Faker::Commerce.price,
    country: Faker::Address.country
  )
  rand(1..10).times do |i|
    review = product.reviews.create!(
      author: Faker::Book.author,
      content: Faker::Hipster.sentence(10),
      rating: Faker::Number.between(1, 5)
    )
  end
end

p "Created #{Product.count} products"
