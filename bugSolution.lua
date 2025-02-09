local function foo(t)
  -- Create a copy to avoid modifying the original table during iteration
  local tCopy = {}
  for k, v in pairs(t) do
    tCopy[k] = v
  end

  for k, v in pairs(tCopy) do
    if type(v) == "table" then
      foo(v)
    end
  end
end

local t = {a = 1, b = {c = 2, d = {e = 3}}}
foo(t)