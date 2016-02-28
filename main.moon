#!/usr/local/bin/moon main.moon

export mpr = require "human"
export mpi = require "inventory"
export mpw = require "weapon"

mpr = mpr.Human!
mpi = mpi.Inventory!

with mpr
  \naming!
  \greet!

with mpi
  \fill_inventory!
