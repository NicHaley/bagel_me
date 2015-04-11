puts "\nCreating items"
20.times do
  Item.create!(
    name: Faker::Commerce.product_name,
    cost: Faker::Commerce.price
  )
  print "|".green
end

puts "\nCreating components"
60.times do
  Component.create!(
    item_id: Item.all.sample.id,
    name: Faker::Commerce.product_name,
    cost: Faker::Commerce.price
  )
  print "|".green
end


puts "\nCreating users"
100.times do
  u = User.create!(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name
  )
  print "|".green

  5.times do
    o = Order.create!(
      user_id: u.id
    )

    print "|".blue

    rand(1..5).times do
      l = LineItem.create!(
        order_id: o.id,
        item_id: Item.all.sample.id
      )
      print "|".yellow

      rand(1..5).times do
        LineComponent.create!( 
          line_item_id: l.id,
          component_id: Component.all.sample.id
        )
        print "|".red
      end
    end
  end
end
#    Payment
#      order_id: integer
#      sub_total: decimal
#      total: decimal
#      stripe_id: string
#
