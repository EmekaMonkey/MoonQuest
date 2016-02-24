module "human", package.seeall
export i = require "inventory"

HUMAN_INVENTORY = i.Inventory!



export class Human
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
    print "Hello " .. table.concat(@name, " ", 1, 2) .. ". You have an inventory storage of  #{HUMAN_INVENTORY.max_slots} slots."
  fill_inventory: =>
    for i = 1, HUMAN_INVENTORY.max_slots
      if i == 1
        io.write "What do you want in your inventory?: "
      elseif i > 1 and i < HUMAN_INVENTORY.max_slots
        io.write "What else?: "
      elseif i == HUMAN_INVENTORY.max_slots
        io.write "Ok last one: "

      @x = io.read!
      table.insert HUMAN_INVENTORY.slots, i,  @x
