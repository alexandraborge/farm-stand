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



def welcome(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
  puts "Hey there! Welcome to Farm de Borge"
  menu(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
end

def menu(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas
  puts "-" * 30
  puts "What would you like to do?"
  puts "1: Browse inventory"
  puts "2: Add to cart"
  puts "3: Check out"
  puts "4: View cart"
  puts "5: Exit"
  print "> "
  answer = gets.chomp
    if answer == "1" || answer == "browse inventory"
      show_all_items(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    elsif answer == "2" || answer == "add to cart"
      add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    elsif answer == "3" || answer == "check out"
      check_out(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    elsif answer == "4" || answer == "view cart"
      view_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    elsif answer == "5" || answer == "exit"
      puts "Okay. Come back now won't ya!"
      exit
    else
      puts "Maybe try another choice"
    end
end

def show_all_items(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
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
  puts "-" * 30
  menu(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
end


def add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
  puts "Please choose what you would like to add to your cart..."
  print "> "
  item = gets.chomp
  puts "How many #{item} would you like?"
  print "> "
  quantity = gets.chomp.to_i
    if item == 'carrots'
      if carrots.count >= quantity
        cart << "#{quantity} #{carrots.first.name}: $#{carrots.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        carrots.slice!(0...quantity)
        puts "There are #{carrots.count} #{item} left in stock."
      else
        "There are only #{carrots.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    elsif item == 'beets'
      if beets.count >= quantity
        cart << "#{quantity} #{beets.first.name}: $#{beets.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        beets.slice!(0...quantity)
        puts "There are #{beets.count} #{item} left in stock."
      else
        "There are only #{beets.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    elsif item == 'kale'
      if kale.count >= quantity
        cart << "#{quantity} #{kale.first.name}: $#{kale.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        carrots.slice!(0...quantity)
        puts "There are #{kale.count} #{item} left in stock."
      else
        "There are only #{kale.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    elsif item == 'arugula'
      if arugula.count >= quantity
        cart << "#{quantity} #{arugula.first.name}: $#{arugula.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        arugula.slice!(0...quantity)
        puts "There are #{arugula.count} #{item} left in stock."
      else
        "There are only #{arugula.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    elsif item == 'celery'
      if celery.count >= quantity
        cart << "#{quantity} #{celery.first.name}: $#{celery.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        celery.slice!(0...quantity)
        puts "There are #{celery.count} #{item} left in stock."
      else
        "There are only #{celery.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    elsif item == 'apples'
      if apples.count >= quantity
        cart << "#{quantity} #{apples.first.name}: $#{apples.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        apples.slice!(0...quantity)
        puts "There are #{apples.count} #{item} left in stock."
      else
        "There are only #{apples.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    elsif item == 'blueberries'
      if blueberries.count >= quantity
        cart << "#{quantity} #{blueberries.first.name}: $#{blueberries.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        blueberries.slice!(0...quantity)
        puts "There are #{blueberries.count} #{item} left in stock."
      else
        "There are only #{blueberries.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    elsif item == 'dates'
      if dates.count >= quantity
        cart << "#{quantity} #{dates.first.name}: $#{dates.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        dates.slice!(0...quantity)
        puts "There are #{dates.count} #{item} left in stock."
      else
        "There are only #{dates.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    elsif item == 'watermelon'
      if watermelon.count >= quantity
        cart << "#{quantity} #{watermelon.first.name}: $#{watermelon.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        watermelon.slice!(0...quantity)
        puts "There are #{watermelon.count} #{item} left in stock."
      else
        "There are only #{watermelon.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    elsif item == 'bananas'
      if bananas.count >= quantity
        cart << "#{quantity} #{bananas.first.name}: $#{bananas.first.price * quantity}"
        puts "Okay! Adding #{quantity} #{item} to your cart..."
        bananas.slice!(0...quantity)
        puts "There are #{bananas.count} #{item} left in stock."
      else
        "There are only #{bananas.count} #{item} left. PLease choose another amount.."
        add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
      end
    else
      puts "This item isn't in stock at the moment."
      add_to_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
    end
    menu(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
end

def view_cart(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
puts "-" * 30
puts "YOUR SHOPPING CART"
  cart.each do |item|
    puts item
  end
  menu(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
end


def check_out(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
  file = open('receipt.txt', 'w')
  file.write(cart)
  file.close
  puts "Awesome here is your receipt..."


  menu(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
end

class ShoppingCart
  #try and implement another classs to make it easier to add up a total
end


welcome(cart, carrots, beets, kale, arugula, celery, apples, blueberries, dates, watermelon, bananas)
