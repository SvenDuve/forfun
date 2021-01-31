using Genie.Router
using Genie, Genie.Renderer.Json, Genie.Requests

route("/") do
  serve_static_file("welcome.html")
end

route("/hello.json") do
  json(:foo => "Foo")
end