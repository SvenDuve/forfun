using Genie, Genie.Router, Genie.Renderer.Json, Genie.Requests

route("/") do
  serve_static_file("welcome.html")
end

route("/hello.json") do
  json(:foo => "Foo")
end


route("/jsonpayload", method = POST) do 
  @show jsonpayload()
  @show rawpayload()

  json("Hello $(jsonpayload()["name"])")
end

#/home/svenduve/forfun/public/css