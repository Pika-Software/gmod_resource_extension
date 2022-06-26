# gmod_resource_extension

## Functions
- `boolean` resource.HasWorkshop( `string` wsid )
- `boolean` resource.HasFile( `string` path )
- resource.RemoveWorkshop( `string` wsid )
- resource.RemoveFile( `string` path )
- `table` resource.GetWorkshop()
- `table` resource.GetAll()
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
