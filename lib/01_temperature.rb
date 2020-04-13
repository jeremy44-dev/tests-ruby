def ftoc(f)
  c = (f - 32) / 1.8
  return c = c.round
end

def ctof(c)
  f = 1.8 * c + 32
  return f
end
