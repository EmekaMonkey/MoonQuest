module "weapons", package.seeall


math.randomseed(os.time())
math.random 5, 10
math.random 5, 10
math.random 5, 10
math.random 5, 10
math.random 5, 10

export class Weapon
   new: =>
    @attack = math.random 5, 10
    @dps = math.random 5, 10
<<<<<<< HEAD

export class Melee extends Weapon
    @attack = math.random 5, 10
    @dps = math.random 5, 10

export class Ranged extends Weapon
    @attack = math.random 5, 10
    @dps = math.random 5, 10

=======
  
export class Melee extends Weapon
    @attack = math.random 5, 10
    @dps = math.random 5, 10
  
export class Ranged extends Weapon
    @attack = math.random 5, 10
    @dps = math.random 5, 10
  
>>>>>>> origin/master
export class Magic extends Weapon
    @attack = math.random 5, 10
    @dps = math.random 5, 10

-- m = Magic!
-- print m.dps
<<<<<<< HEAD
=======

>>>>>>> origin/master
