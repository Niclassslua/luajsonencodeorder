function encodeOrdered(tbl, order)
    local result = {}
    for _, key in ipairs(order) do
        if tbl[key] then
            table.insert(result, '"' .. key .. '":' .. json.encode(tbl[key]))
        end
    end
    return '{' .. table.concat(result, ',') .. '}'
end

local exampleArray = {
    fruit = {
        type = 'Apple',
        color = 'Red'
    },
    vegetable = {
        type = 'Carrot',
        color = 'Orange'
    },
    drink = {
        type = 'Water',
        amount = '1 Liter'
    }
}

local exampleOrder = {'drink', 'fruit', 'vegetable'}


local orderedJson = encodeOrdered(exampleArray, exampleOrder)

print(orderedJson)
