package = "annotate"
version = "0.1-1"
source = {
  url = "${SRCURL}",
}
description = {
  summary = "A decorator for docstrings and type checking",
  detailed = [[
    This Lua module provides a decorator that allows to associate Lua
    values with docstrings. A plugin that parses function signatures
    in those docstrings and compiles them to argument and return value
    type checking functions is included.
  ]],
  homepage = "${HPURL}",
  license = "MIT"
}
dependencies = {
  "lua >= 5.1, < 5.3",
  "lpeg >= 0.6"
}
build = {
  type = "builtin",
  modules = {
    [ "annotate" ] = "src/annotate.lua",
    [ "annotate.check" ] = "src/annotate/check.lua",
  }
}

