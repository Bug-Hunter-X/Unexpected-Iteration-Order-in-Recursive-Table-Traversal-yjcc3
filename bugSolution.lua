local function fooSorted(t)
  local keys = {} 
  for k, _ in pairs(t) do table.insert(keys, k) end
  table.sort(keys)
  for _, k in ipairs(keys) do
    if type(t[k]) == "table" then
      fooSorted(t[k])
    end
    print(k, t[k])
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
fooSorted(t)