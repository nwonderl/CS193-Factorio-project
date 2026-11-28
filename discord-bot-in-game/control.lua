-- sets the code to run on loading a new game
script.on_init(function()
    -- variable to store the entire text of the csv file before it is added in.
    local text = ""

    --loops through each recipe in the current game and adds its name to the current row in the file
    for recipeName, recipe in pairs(prototypes["recipe"]) do
        text = text .. recipeName .. " Products: "

        -- loops through each product in the current recipe and adds its name and number to the current row in the file
        for product, recipeProduct in pairs(prototypes["recipe"][recipeName].products) do
            text = text .. recipeProduct.name .. " " .. recipeProduct.amount .. " "
        end
        text = text .. "Ingredients: "

        -- loops through each ingredient in the current recipe and adds its name and number to the current row in the file
        for ingredient, recipeIngredient in pairs(prototypes["recipe"][recipeName].ingredients) do
            text = text .. recipeIngredient.name .. " " .. recipeIngredient.amount .. " "
        end
            
        -- adds the current time (energy) for the recipe to current row in the file
        text = text .. "Time in seconds: " .. prototypes["recipe"][recipeName].energy
    text = text .. "\n"
    end

    -- writes the entirety of recipes.csv using text
    helpers.write_file("recipes.csv", text, false)
end)
