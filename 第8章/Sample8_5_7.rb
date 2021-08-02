class Macbook
  p self
  # Macbook

  p self.class
  # Class
end

p Macbook.class
# Class

p Class.superclass
# Module


module PC
  p self
  # PC

  p self.class
  # Module
end

p PC.class
# Module

p Module.superclass
# Object