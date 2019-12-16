class Cookie
  attr_reader :description, :price, :image
  def initialize(description, price, image)
    @description = description
    @price = price
    @image = image
    #@image = image
  end
end

class Cake
  attr_reader :description, :price, :image
  def initialize(description, price, image)
    @description = description
    @price = price
    @image = image
  end
end

class Muffin
  attr_reader :description, :price, :image
  def initialize(description, price, image)
    @description = description
    @price = price
    @image = image
  end
end

@chocChip = Cookie.new('Your basic chocolate chip cookie, elevated', '$2.50', 'https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2018/11/worst-chocolate-chip-cookie-recipe-1-of-1-3.jpg')
@macadamia = Cookie.new('The best cookie in the world, EVER', '$2.50', 'https://joythebaker.com/wp-content/uploads/2016/04/vsco-photo-2-7-e1460689541808.jpg')
@doubleChoco = Cookie.new('Diabetes', '$2.50', 'https://www.sprinklesandsprouts.com/wp-content/uploads/2016/10/Subway-Style-Double-Chocolate-Chip-Cookies.jpg')

@spongeCake = Cake.new('Strawberry Shortcake\'s favorite!', '$25', 'https://www.tasteofhome.com/wp-content/uploads/2018/01/Layered-Orange-Sponge-Cake_exps170189_TH143190B09_26_5bC_RMS-2-696x696.jpg')
@redVelvet = Cake.new('Chocolate cake with red food dye', '$25', 'https://amandascookin.com/wp-content/uploads/2018/12/Red-Velvet-Cake-680x680-Sara-Maniez-2018-12-02_23.20.33.jpg')
@chocoMousse = Cake.new('Smooth chocolate layered mousse cake that melts in your mouth', '$30', 'https://www.kcet.org/sites/kl/files/thumbnails/image/sfs_triple_chocolate_mousse_cake-15.jpg')

@blueberry = Muffin.new('The first rendering of a muffin', '$5', 'https://www.tasteofhome.com/wp-content/uploads/2018/01/Wild-Blueberry-Muffins_EXPS_FTTMZ19_787_B03_05_7b_rms-696x696.jpg')
@banana = Muffin.new('My favorite fruit blended into a muffin! Yum!', '$5', 'https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2018/01/Banana-Muffin-Recipe-1-of-1-8.jpg')
@coffee = Muffin.new('Crackhead muffins only!', '$5', 'https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2018/01/Banana-Muffin-Recipe-1-of-1-8.jpg')
