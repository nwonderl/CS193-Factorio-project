script.on_init(function()
    local text = ""
    for recipeName, recipe in pairs(prototypes["recipe"]) do
      text = text .. recipeName .. "products: "
            for productName, name in pairs(prototypes["recipe"]["recipeName"].results) do
                 text = text .. productName
            end
    text = text .. "\n"
    end
    helpers.write_file("recipes.csv", text, false)
end)
