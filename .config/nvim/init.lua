local child_modules = {
  'plugin',
  'keybind',
  'setup',
}



for i=1, #child_modules, 1 do
  require(child_modules[i])
end

