require_relative 'menu'
# require_relative 'order'
class Takeaway

  attr_reader :menu, :order

def initialize(menu:, order:)
  @menu = menu
  @order = order
end

def print
  menu.print_menu
end

def place_order(dishes)
  order.add(dishes)
end

end