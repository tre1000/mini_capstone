require "http"
require "tty-prompt"
prompt = TTY::Prompt.new

action = prompt.select("What would you like to do?", "View all products" => 1, "View specific product" => 2, "Update existing product" => 3, "Delete existing product" => 4)

def get_response
  @response = HTTP.get("http://localhost:3000/api/products").parse
  @product_hash = Hash.new
  index = 1

  @response.each do |product|
    @product_hash[product["name"]] = product["id"]
    index += 1
  end
end

def show
  prompt = TTY::Prompt.new

  product_id = prompt.select("select a product to view more", @product_hash)

  show = HTTP.get("http://localhost:3000/api/products/#{product_id}").parse
  pp show
end

def update
  things_to_update = ["name", "price", "image_url", "description"]
  product = prompt.select("What product would you like to update?", @product_hash)
end

def destroy
end

if action == 1
  get_response()
  pp @response
elsif action == 2
  get_response()
  show()
end

# response = HTTP.get("http://localhost:3000/api/products").parse

# puts "enter a number to get info on a product."

# id = gets.chomp
# product = HTTP.get("http://localhost:3000/api/products/#{id}").parse

# pp product
