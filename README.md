# gmod_resource_extension

## Functions
- resource.RemoveWorkshop( `string` wsid )
- resource.HasWorkshop( `string` wsid )
- resource.RemoveFile( `string` path )
- resource.HasFile( `string` path )
- resource.GetAll()
- resource.Clear()

## Example:
```lua
    print( "before")
    PrintTable( resource.GetAll() )

    resource.Clear()

    print( "\nafter")
    timer.Simple(0, function()
        PrintTable( resource.GetAll() )
    end)
```
