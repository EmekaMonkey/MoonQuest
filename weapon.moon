module "weapons", package.seeall

export class Melee
  new: =>
    math.randomseed(os.time())
    @attack =
    @dps =
  
export class Ranged
  new: =>
    math.randomseed(os.time())
    @attack =
    @dps =
  
export class Magic
  new: =>
    math.randomseed(os.time())
    @attack =
    @dps =