puts "\nCreating items"
%w[
Montreal
Sesame
Poppy Seed
Blue Berry
Whole Wheat
Plain
Everything
Cinnamon Raisin
Four Cheese
Sesame Seed
12 Grain
Sundried Tomato Asiago
Maple Cinnamon French Toast
Jalapeno Asiago Mozzarella
Pretzel
].each do |name|
  Item.create!(
    name: name,
    cost: Faker::Commerce.price
  )
  print "|".green
end

puts "\nCreating components"
%w[
Butter
Peanut Butter
Jam
Cream Cheese
Ketchup
Egg
Hummus
Lox
Nuttella
Pizza
].each do |name|
  Component.create!(
    item_id: Item.all.sample.id,
    name: name,
    cost: Faker::Commerce.price
  )
  print "|".green
end


puts "\nCreating users"
50.times do
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
