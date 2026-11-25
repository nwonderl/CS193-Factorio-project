script.on_init(
  local file = io.open("recipes.csv","W")
  for recipeName, recipe in pairs(prototypes["recipe"]) do
    file:write(recipeName .. "\n")
  end
)
