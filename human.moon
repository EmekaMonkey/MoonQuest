class Human
  new: =>
    @name = {}
  naming: =>
    io.write "Give me a First name: "
    export first = io.read!
    io.write "Give me a Last name: "
    export last = io.read!
    table.insert @name, 1, first
    table.insert @name, 2, last
  greet: =>
    print "Hello " .. table.concat @name, " ", 1, 2