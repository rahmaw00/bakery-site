require 'sinatra'
require 'uri'
require 'net/http'
require 'openssl'
require 'json'
require './pastries.rb'

get '/' do
  puts 'hello'
  erb :index
end

get '/cookies' do
  @header = 'Cookies galore!'

    @chocChip = Cookie.new('Your basic chocolate chip cookie, elevated', '$2.50', 'https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2018/11/worst-chocolate-chip-cookie-recipe-1-of-1-3.jpg')
    @macadamia = Cookie.new('The best cookie in the world, EVER', '$2.50', 'https://joythebaker.com/wp-content/uploads/2016/04/vsco-photo-2-7-e1460689541808.jpg')
    @doubleChoco = Cookie.new('Diabetes', '$2.50', 'https://www.sprinklesandsprouts.com/wp-content/uploads/2016/10/Subway-Style-Double-Chocolate-Chip-Cookies.jpg')

  @cookies = [@chocChip, @macadamia, @doubleChoco]

  @output = @cookies
  erb :cookies
end

get '/cake' do
  @header = 'Cake galore!'

    @spongeCake = Cake.new('Strawberry Shortcake\'s favorite!', '$25', 'https://www.tasteofhome.com/wp-content/uploads/2018/01/Layered-Orange-Sponge-Cake_exps170189_TH143190B09_26_5bC_RMS-2-696x696.jpg')
    @redVelvet = Cake.new('Chocolate cake with red food dye', '$25', 'https://amandascookin.com/wp-content/uploads/2018/12/Red-Velvet-Cake-680x680-Sara-Maniez-2018-12-02_23.20.33.jpg')
    @chocoMousse = Cake.new('Smooth chocolate layered mousse cake that melts in your mouth', '$30', 'https://www.kcet.org/sites/kl/files/thumbnails/image/sfs_triple_chocolate_mousse_cake-15.jpg')

  @cake = [@spongeCake, @redVelvet, @chocoMousse]

  @output = @cake
  erb :cake
end

get '/muffins' do
  @header = 'Cookies galore!'

    @blueberry = Muffin.new('The first rendering of a muffin', '$5', 'https://www.tasteofhome.com/wp-content/uploads/2018/01/Wild-Blueberry-Muffins_EXPS_FTTMZ19_787_B03_05_7b_rms-696x696.jpg')
    @banana = Muffin.new('My favorite fruit blended into a muffin! Yum!', '$5', 'https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2018/01/Banana-Muffin-Recipe-1-of-1-8.jpg')
    @coffee = Muffin.new('Crackhead muffins only!', '$5', 'https://i2.wp.com/www.sugarspunrun.com/wp-content/uploads/2018/01/Banana-Muffin-Recipe-1-of-1-8.jpg')

  @muffins = [@blueberry, @banana, @coffee]

  @output = @muffins
  erb :muffins
end

# system('touch index.html main.css main.js')
# File.open('index.html', 'w') { |html|
#   html.write(%(
#     <!DOCTYPE html>
#     <html lang="en" dir="ltr">
#       <head>
#         <meta charset="utf-8">
#         <title>Cuckoo For Cupcakes</title>
#         <link rel="stylesheet" href="./main.css">
#       </head>
#       <body>
#         <h3>Welcome to Cuckoo For Cupcakes!</h3>
#
#         <form action="/" method="POST">
#           <input name="query" />
#           <button> Search by cookies... </button>
#         </form>
#
#       </body>
#     </html>
#     ))
# }
#
# File.open('main.css', 'w') { |css|
#   css.write("
#     body {
#       margin: 0;
#       display: grid;
#       grid-template-areas: 'aside nav nav' 'aside main main' 'aside footer footer' / 15vh 55vh 30vh;
#     }
#
#     #up {
#       background-color: lightblue;
#     }
#
#     #side {
#       background-color: thistle;
#     }
#
#     #down {
#       background-color: lightpink;
#     }
#     ")
# }
#
