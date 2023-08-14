local header = require "header"
header.setup {
  length = 80, -- headers of different sizes are incompatible with each other
  margin = 5,
  default_map = false, -- default Mapping <F1> in normal mode
  auto_update = true, -- update header when saving
  asciiart = {
    ".........../´¯¯/).........",
    ".........,/¯.../..........",
    "........./..../...........",
    "...../´¯/'..'/´¯¯`·¸......",
    "./'/.../..../....../¨¯....",
    "('(....´...´... ¯~/'..')..",
    ".\\..............'...../..",
    "..\\....\\.........._.·´..",
  }, -- headers with different ascii arts are incompatible with each other
}
