# Supplier.create!([
#   {name: "Smackem Toys", email: "toys@smackemgood.com", phone: "123-456-7890"},
#   {name: "The Bat Cave", email: "alfred@thebatcave.com", phone: "201-900-8767"},
#   {name: "Blunt Objects Inc", email: "imabeblunt@bluntobjects.com", phone: "1-800-002-5868"}
# ])
# Product.create!([
#   {name: "Rubber Chicken", price: "15.0", image_url: "https://previews.123rf.com/images/npopova/npopova2005/npopova200500005/146448209-surprised-rubber-chicken-chiken-head-close-up-isolated-on-white-background-3d-rendering.jpg", description: "Made of rubber. Very loud. Low damage, high annoyance. Great for parties!", stock: 6, supplier_id: 1},
#   {name: "Socker Boppers", price: "25.0", image_url: "https://i.pinimg.com/originals/15/45/33/1545330b694a9e6661a1439d5ff1f71a.jpg", description: "Fun for play time, not for self defense. (Child not included.)", stock: 10, supplier_id: 1},
#   {name: "Golf Club", price: "100.0", image_url: "https://media.wired.com/photos/59e950d4ad234211544e2c41/master/w_2560%2Cc_limit/pxg-0311t-iron-angle-TA.jpg", description: "High quality golf club. Can be used to hit golf balls and intruders!", stock: 10, supplier_id: 3},
#   {name: "Wooden Baseball Bat", price: "35.0", image_url: "https://shop.slugger.com/media/catalog/product/cache/40/image/1800x/040ec09b1e35df139433887a97daa66f/9/1/9111f5a8905d47e7da8f1eaf62c826668e494f89_WTLW3AMIXA16_0_GENUINE_S3X_MIX_NAT_Front_2019.jpg", description: "Wooden. Great for hitting baseballs and intruders immune to golf clubs!", stock: 7, supplier_id: 2},
#   {name: "Aluminium Baseball Bat", price: "40.0", image_url: "https://images-na.ssl-images-amazon.com/images/I/51dThCU9l2L._AC_SL1000_.jpg", description: "Aluminium. Can be used to hit baseballs and intruders immune to wood!", stock: 13, supplier_id: 2},
#   {name: "Pool Noodle", price: "13.0", image_url: "https://i5.walmartimages.com/asr/f983764e-57dd-4c3f-b052-c46225afc98e_1.a172e0ee732a8640dd4cdb7831fd7973.jpeg", description: "Soft and made of foam. Great for hitting things you don't want to damage, like fine china or children. Terrible against intruders.", stock: 18, supplier_id: 1}
# ])

Image.create!([{ url: "https://cdn11.bigcommerce.com/s-jl6azsq4yb/images/stencil/1280x1280/products/206/2383/Squawkin_Chicken-MAGCQ2__01880.1600534873.jpg?c=2", product_id: 1 }, { url: "https://images-na.ssl-images-amazon.com/images/I/51I-7%2Bhp8NL._AC_SX522_.jpg", product_id: 1 }, { url: "https://i5.walmartimages.com/asr/3e6983b1-4466-4eb2-8f49-b579c83f9bed_1.335c02515b701a9114223048b5d396e4.jpeg", product_id: 1 }])
