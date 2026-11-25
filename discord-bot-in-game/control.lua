script.on_init(function()
    local text = ""
    for recipeName, recipe in pairs(prototypes["recipe"]) do
      text = text .. recipeName .. "\n"
    end
    game.write_file("recipes.csv", text, false)
end)
