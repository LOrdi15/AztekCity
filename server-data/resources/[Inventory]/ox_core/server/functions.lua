---Return all identifiers for the given source.
---@param source number | string
---@return table
function Ox.GetIdentifiers(source)
    ---@cast source string

    if Shared.SV_LAN then
        return {
            [Server.PRIMARY_IDENTIFIER] = 'fayoum'
        }
    end

    local identifiers = {}

    for i = 0, GetNumPlayerIdentifiers(source) - 1 do
        local prefix, identifier = string.strsplit(':', GetPlayerIdentifier(source, i))

        if prefix ~= 'ip' then
            identifiers[prefix] = identifier
        end
    end

    return identifiers
end
