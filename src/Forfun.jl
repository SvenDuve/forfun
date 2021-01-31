module Forfun

using Genie, Logging, LoggingExtras

function main()
  Base.eval(Main, :(const UserApp = Forfun))

  Genie.genie(; context = @__MODULE__)

  Base.eval(Main, :(const Genie = Forfun.Genie))
  Base.eval(Main, :(using Genie))
end

end
