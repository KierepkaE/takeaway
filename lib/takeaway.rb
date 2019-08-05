class Takeaway

  attr_reader :menu

def initialize(menu)
  @menu = menu
end

def print
  menu.print_menu
end

end