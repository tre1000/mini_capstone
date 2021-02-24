require "http"
require "tty-table"

response = HTTP.get("http://localhost:3000/api/available_products")
@parsed_response = response.parse
pp @parsed_response
