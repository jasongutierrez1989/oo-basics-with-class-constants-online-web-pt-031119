class Shoe
  attr_accessor :color, :size, :material, :condition
  attr_reader :brand

  BRANDS = []

  def initialize(brand)
    @brand = brand
    BRANDS.push(brand) unless BRANDS.include?(brand)
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end

  def brand=(brand)
    @brand = brand
    count = 0
    while count <= BRANDS.length
      BRANDS.each {|name|
        if name != brand
          BRANDS << brand
        end}
        count += 1

    end
  end

end
