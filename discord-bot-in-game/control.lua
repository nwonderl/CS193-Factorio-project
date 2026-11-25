script.on_init(function()
    local text = ""
    for recipeName, recipe in pairs(prototypes["recipe"]) do
      text = text .. recipeName .. "products: "
            for product, recipeProduct in pairs(prototypes["recipe"][recipeName].products) do
                 text = text .. recipeProduct.name
            end
    text = text .. "\n"
    end
    helpers.write_file("recipes.csv", text, false)
end)
