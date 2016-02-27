module("human", package.seeall)
i = require("inventory")
local HUMAN_INVENTORY = i.Inventory()
do
  local _class_0
  local _base_0 = {
    naming = function(self)
      io.write("Give me a First name: ")
      first = io.read()
      io.write("Give me a Last name: ")
      last = io.read()
      table.insert(self.name, 1, first)
      return table.insert(self.name, 2, last)
    end,
    greet = function(self)
      return print("Hello " .. table.concat(self.name, " ", 1, 2) .. ". You have an inventory storage of  " .. tostring(HUMAN_INVENTORY.max_slots) .. " slots.")
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self)
      self.name = { }
    end,
    __base = _base_0,
    __name = "Human"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Human = _class_0
end
