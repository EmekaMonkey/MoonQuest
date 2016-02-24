module "inventory", package.seeall

export class Inventory
  new: =>
    math.randomseed(os.time())
    math.random 10, 15
    math.random 10, 15
    math.random 10, 15
    @max_slots = math.random 10, 15
    @slots = {}
