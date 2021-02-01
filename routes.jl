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

route("/rawpayload", method = POST) do 

  @show rawpayload()
rp = rawpayload()
io = open("raw.txt", "w")
write(io, rp)
close(io)
  print(rp)
end

#/home/svenduve/forfun/public/css
