class Dessert
  attr_accessor :name, :calories
  def initialize(name, calories)
    @name = name
    @calories = calories
  end
  def healthy?
    if @calories < 200
      true
    else false
    end
  end
  def delicious?
    true
  end
end #end class



class JellyBean < Dessert
  attr_accessor :flavor
  def initialize(flavor)
    @flavor = flavor
    super("#{@flavor} jelly bean", 5)
  end
  
  def delicious?
    if @flavor.eql?("licorice")
      false
    else
      true
    end
  end
  
end #end class

