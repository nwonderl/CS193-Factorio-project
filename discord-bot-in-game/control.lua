script.on_init(function()
    local text = ""
    for recipeName, recipe in pairs(prototypes["recipe"]) do
      text = text .. recipeName .. "products: "
            for result, recipeResult in pairs(prototypes["recipe"][recipeName].results) do
                 text = text .. recipeResult.name
            end
    text = text .. "\n"
    end
    helpers.write_file("recipes.csv", text, false)
end)
