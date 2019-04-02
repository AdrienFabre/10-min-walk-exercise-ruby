class App
  def tenminuteswalk(route)
    route.count('n') == route.count('s') && 
    route.count('e') == route.count('w') &&
    route.length == 10 ? true : false
  end
end