module "inventory", package.seeall

export class Inventory
  new: =>
    @slots = {}
    math.randomseed(os.time())
    math.random 10, 15
    math.random 10, 15
    math.random 10, 15
    @max_slots = math.random 10, 15
    @save = io.open "save.xyza", "w"
  fill_inventory: =>
    for i = 1, @max_slots
      if i == 1
        io.write "What do you want in your inventory?: "
      elseif i > 1 and i < @max_slots
        io.write "What else?: "
      elseif i == @max_slots
        io.write "Ok last one: "
      @x = io.read!
      if  @x != "*/EXIT"
        if @x == ""
          table.insert @slots, i,  "empty"
        else
          table.insert @slots, i,  @x
      else
<<<<<<< HEAD
        break
=======
        table.insert @slots, i,  @x
>>>>>>> origin/master
    io.write "\nInventory:\n"
    for k, v in pairs @slots
      if k != @max_slots
        print v .. ","
      elseif k == @max_slots
        print v
<<<<<<< HEAD
    @save\write "Inventory:\n"
    for k, v in pairs @slots
      if k != @max_slots
        @save\write v .. ",\n"
      elseif k == @max_slots
        @save\write v
=======
      
>>>>>>> origin/master
