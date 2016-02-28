module("inventory", package.seeall)
do
  local _class_0
  local _base_0 = {
    fill_inventory = function(self)
      for i = 1, self.max_slots do
        if i == 1 then
          io.write("What do you want in your inventory?: ")
        elseif i > 1 and i < self.max_slots then
          io.write("What else?: ")
        elseif i == self.max_slots then
          io.write("Ok last one: ")
        end
        self.x = io.read()
        if self.x == "" then
          table.insert(self.slots, i, "empty")
        else
          table.insert(self.slots, i, self.x)
        end
      end
      io.write("\nInventory:\n")
      for k, v in pairs(self.slots) do
        if k ~= self.max_slots then
          print(v .. ",")
        elseif k == self.max_slots then
          print(v)
        end
      end
    end
  }
  _base_0.__index = _base_0
  _class_0 = setmetatable({
    __init = function(self)
      self.slots = { }
      math.randomseed(os.time())
      math.random(10, 15)
      math.random(10, 15)
      math.random(10, 15)
      self.max_slots = math.random(10, 15)
    end,
    __base = _base_0,
    __name = "Inventory"
  }, {
    __index = _base_0,
    __call = function(cls, ...)
      local _self_0 = setmetatable({}, _base_0)
      cls.__init(_self_0, ...)
      return _self_0
    end
  })
  _base_0.__class = _class_0
  Inventory = _class_0
end
