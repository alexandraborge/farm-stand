#class ShoppingCart
#    @cart = []
#  end

#  def add_item(item)
#    @cart << item
#  end

#  def remove_item(item)
#    @cart.delete do |item|
#      item == item
#    end
#  end
#end

#class StoreEmployee
#  def initialize(config)
#    @age = config[:age]
#  end

#  def price_check(produce)
#    produce.price
#    @sc = ShoppingCart.new
#  end

#  def put_item_into_cart(item)
#    @sc.add_item item
#  end
#end

#some_fruit = Carrot.new('Carrot', 10)

#brian = StoreEmployee(age: 15)


#--------------------------------------------------------------------------------
carrots = []
beets = []
kale = []
arugula =[]
celery = []
apples = []
blueberries =[]
dates = []
watermelon = []
bananas = []

cart = []

class Produce
  attr_accessor :name, :price

  def initialize(name, price)
    @name = name
    @price = price
  end
end

class Carrot < Produce
end

class Beet < Produce
end

class Kale < Produce
end

class Arugula < Produce
end

class Celery < Produce
end

class Apple < Produce
end

class Banana < Produce
end

class Date < Produce
end

class Blueberry < Produce
end

class Watermelon < Produce
end

#creates a given amount of instances of each object and gives them a name and price

50.times do
  carrots << Carrot.new('Carrots', 2)
end

100.times do
  beets << Beet.new('Beets', 3)
end

20.times do
  kale << Kale.new('Kale', 4)
end

20.times do
  arugula << Arugula.new('Arugula', 2)
end

25.times do
  celery << Celery.new('Celery', 3)
end

120.times do
  apples << Apple.new('Apples', 1)
end

200.times do
  bananas << Banana.new('Bananas', 2)
end

50.times do
   dates << Date.new('Dates', 8)
end

80.times do
  blueberries << Blueberry.new('Blueberries', 6)
end

 30.times do
  watermelon << Watermelon.new('Watermelon', 8)
end



def welcome(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
  puts "Hey there! Welcome to Farm de Borge"
  puts "What would you like to do?"
  puts "1: Browse Items"
  puts "2: Price Check"
  puts "3: Add To Cart"
  puts "4: Check Out"
  puts "5: Past Transactions"
  print "> "
  answer = gets.chomp
    if answer == '1' || answer == 'browse items'
      show_all_items(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    elsif answer == '2' || answer == 'price check'
      price_check(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    elsif answer == '3' || answer == 'add to cart'
      add_to_cart(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    elsif answer == '4' || answer == 'check out'
      check_out(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    elsif answer == '5' || answer == 'past transactions'
      past_trans(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    else
      puts "Maybe try another answer"
      welcome(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    end
end

def show_all_items(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
  puts "-" * 30
  puts "These are all of the items we have in stock...."
  puts "#{carrots.count} #{carrots.first.name}: $#{carrots.first.price}"
  puts "#{beets.count} #{beets.first.name}: $#{beets.first.price}"
  puts "#{celery.count} #{celery.first.name}: $#{celery.first.price}"
  puts "#{kale.count} #{kale.first.name}: $#{kale.first.price}"
  puts "#{arugula.count} #{arugula.first.name}: $#{arugula.first.price}"
  puts "#{watermelon.count} #{watermelon.first.name}: $#{watermelon.first.price}"
  puts "#{blueberries.count} #{blueberries.first.name}: $#{blueberries.first.price}"
  puts "#{dates.count} #{dates.first.name}: $#{dates.first.price}"
  puts "#{apples.count} #{apples.first.name}: $#{apples.first.price}"
  puts "#{bananas.count} #{bananas.first.name}: $#{bananas.first.price}"
  welcome(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
end

def price_check(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
  puts "-" * 30
  puts "What is the item that you would like to check?"
  print "> "
  response = gets.chomp
  puts "#{response.first.name}: $#{response.first.price}"
end

def add_to_cart
  puts "Which item would you like to add to your cart?"
  print "> "
  item = gets.chomp
      #check if item exists
      #if item doesnt exist then puts "We arent carrying this item right now. try looking for another item"
      #start method over ...."add_to_cart"
      #if item does exist do this...
  puts "Great! How many #{item.first.name} do you need?"
  print "> "
  amount = gets.chomp
    #check if we have enough of the item
    #if we dont have enough then show the count of that item and ask them to try again...add_to_cart
    #if we do have enough then deduct the amount wanted from the amount in stock
    #and do this...
    puts "Okay! Adding the item to your cart now..."
end

def save_transaction
  #opens file and allows me to write to it
  file = open('transaction_history.txt', 'w')
  #writes to file
  file.write('#')
  file.close
end

def past_trans
  #show all past transactions
end

def check_out

end

def remove_item
end

welcome(carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
