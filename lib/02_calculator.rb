def add(nb, nb2)
  return nb + nb2
end

def subtract(nb, nb2)
  return nb - nb2
end

def sum(array)
  s = 0
  array.each { |a| s += a }
  return s
end

def multiply(nb, nb2)
  return nb * nb2
end

def power(nb, nb2)
  return nb ** nb2
end

def factorial(nb)
  if !(nb.instance_of? Integer) || nb < 0
    return nil
  end
  
  if nb == 0 # one is the loneliest number
    return 1
  end
  
  return nb * factorial(nb - 1) 
end
