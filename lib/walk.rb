class App

  def tenminuteswalk(route)
    west = 0
    east = 0
    south = 0 
    north = 0 

    route.map do |direction|
      if direction == 'w' 
        west += 1
      elsif direction == 'e'
        east += 1
      elsif direction == 's'
        south += 1
      elsif direction == 'n'
        north += 1 
      end
    end
    if route.count == 10 && west == east && south == north
      true
    else
      false
    end
  end
end