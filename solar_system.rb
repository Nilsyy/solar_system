class System
  def initialize
    @bodies = []
  end

  def add(planet)
    double = false
    @bodies.each do |body|
      if body == planet
        double = true
        break
      end
    end

    if double == false
      @bodies << planet
    end
  end

  def total_mass
    total = 0
    @bodies.each do |body|
      total += body.mass
    end
    return total
  end
end

class Body
  def initialize(name, mass)
    @name = name
    @mass = mass
  end
end

class Planet < Body
  def initialize(name, mass, day, year)
    super(name, mass)
    @day = day
    @year = year
  end
end

class Star < Body
  def initialize(name, mass, type)
    super(name, mass)
    @type = type
  end
end

class Moon < Body
  def initialize(name, mass, month, planet)
    super(name, mass)
    @month = month
    @planet = planet
  end
end
