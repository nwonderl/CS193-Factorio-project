script.on_init(function()
    local text = ""
    for recipeName, recipe in pairs(prototypes["recipe"]) do
      text = text .. recipeName .. "\n"
    end
    helpers.write_file("recipes.csv", text, false)
end)
