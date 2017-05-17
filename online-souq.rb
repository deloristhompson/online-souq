
# Greet a shooper and take their name. store this as name
print "Welcome to the world of tomorrow \nPlease enter your name "
name = gets.chomp
# ask the user what they want to add to their shopping cart
print "\nHello #{name}\n These are the available items you can choose to buy:\n"

shopping_items = ['old paperback book', 'potato', 'red onion', 'dried lemon', 'frankincense', 'medicinal herbs', 'saffron', 'glass spice jar', 'red fabric', 'orange fabric', 'handicrafts', ' small Persian rug', 'large Persian rug', 'extra large Persian rug']

shopping_items.each do |items|
  puts "#{items}"
end

puts

input = ""
shopping_cart = []
needed_items = []

while true
  puts "What would you like to buy? (type Finished when you're done)"
  input = gets.chomp.downcase

  # give the user the option to type a command like "Finished" to stop the user from adding more items
if input == "finished"
    break
    elsif shopping_items.include?(input)
    shopping_items.uniq
    shopping_cart << input
    else
    needed_items << input
   puts "Sorry, that item is not in our store yet!"
  end
end

puts "\n#{name}, thanks for trying our online Souq platform. Here is a list of items in your cart!: "
  shopping_cart.each do |items|
  puts "*#{items}"
end

# if item is not on list they should be notified
puts "\nThese are the list of items that we currently do not sell, but will let you know if we start to carry them. Thank you for the input, Have a Tomorrow day."
  needed_items.each do |needed|
  puts "*#{needed}"
end
