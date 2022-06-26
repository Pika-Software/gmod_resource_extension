-- https://github.com/danielga/gm_stringtable
if not pcall( require, "stringtable" ) or (stringtable == nil) then
    MsgN( "Please install binnary module: https://github.com/danielga/gm_stringtable" )
    return
end

local function downloadables()
    return stringtable.Find( "downloadables" )
end

function resource.GetAll()
    local data = downloadables()
    if (data ~= nil) then
        return data:GetStrings()
    end
end

function resource.Clear()
    local data = downloadables()
    if (data ~= nil) then
        data:Lock( true )
        data:DeleteAllStrings()
        data:Lock( false )
    end
end

do

    local isstring = isstring
    function resource.RemoveWorkshop( wsid )
        if isstring( wsid ) then
            local data = downloadables()
            if (data ~= nil) then
                local searchable = wsid .. ".gma"
                local strings = data:GetStrings()
                data:Lock( true )
                data:DeleteAllStrings()

                for num = 0, #strings do
                    local str = strings[ num ]
                    if (str == nil) then continue end
                    if (str == searchable) then continue end
                    data:AddString( true, str )
                end

                data:Lock( false )
            end
        end
    end

    function resource.RemoveFile( path )
        if isstring( path ) then
            local data = downloadables()
            if (data ~= nil) then
                local strings = data:GetStrings()
                data:Lock( true )
                data:DeleteAllStrings()

                for num = 0, #strings do
                    local str = strings[ num ]
                    if (str == nil) then continue end
                    if (str == path) then continue end
                    data:AddString( true, str )
                end

                data:Lock( false )
            end
        end
    end

end
