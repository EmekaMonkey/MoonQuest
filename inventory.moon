module "inventory", package.seeall

export class Inventory
  new: =>
    @max_slots = math.random 10, 15
