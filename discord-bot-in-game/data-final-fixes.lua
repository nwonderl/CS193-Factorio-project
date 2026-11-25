local file = io.open("recipes.csv","W")
for recipeName, recipe in pairs(data.raw["recipe"]) do
  file:write(data.raw["recipe"][recipeName].name .. "\n")
end
