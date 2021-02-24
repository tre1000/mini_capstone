# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(name: "Golf Club", price: 100, image_url: "https://media.wired.com/photos/59e950d4ad234211544e2c41/master/w_2560%2Cc_limit/pxg-0311t-iron-angle-TA.jpg", description: "This is a golf club. It can be used to hit golf balls and intruders!")

Product.create(name: "Wooden Baseball Bat", price: 35, image_url: "https://shop.slugger.com/media/catalog/product/cache/40/image/1800x/040ec09b1e35df139433887a97daa66f/9/1/9111f5a8905d47e7da8f1eaf62c826668e494f89_WTLW3AMIXA16_0_GENUINE_S3X_MIX_NAT_Front_2019.jpg", description: "This is a wooden baseball bat. It can be used to hit baseballs and intruders immune to golf clubs!")

Product.create(name: "Aluminum Baseball Bat", price: 40, image_url: "https://images-na.ssl-images-amazon.com/images/I/51dThCU9l2L._AC_SL1000_.jpg", description: "This is an aluminum baseball bat. It can be used to hit baseballs and intruders immune to wood!")
