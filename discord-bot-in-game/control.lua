script.on_init(function()
    local text = ""
    for recipeName, recipe in pairs(prototypes["recipe"]) do
      text = text .. recipeName .. "products: "
            for productName, product in pairs(prototypes["recipe"][products]) do
                 text = text .. productName
            end
    text = text .. "\n"
    end
    helpers.write_file("recipes.csv", text, false)
end)
