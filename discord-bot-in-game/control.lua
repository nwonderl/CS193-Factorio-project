script.on_init(function()
    local text = ""
    for recipeName, recipe in pairs(prototypes["recipe"]) do
        text = text .. recipeName .. " Products: "
        for product, recipeProduct in pairs(prototypes["recipe"][recipeName].products) do
            text = text .. recipeProduct.name .. " " .. recipeProduct.amount .. " "
        end
        text = text .. " Ingredients: "
        for product, recipeIngredient in pairs(prototypes["recipe"][recipeName].ingredients) do
            text = text .. recipeIngredient.name .. " " .. recipeIngredient.amount .. " "
        end
        text = text .. " Time in seconds: " .. prototypes["recipe"][recipeName].energy
    text = text .. "\n"
    end
    helpers.write_file("recipes.csv", text, false)
end)
