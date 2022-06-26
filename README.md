# gmod_resource_extension

## Example: `clear all resource`
```lua
    print( "before")
    PrintTable( resource.GetAll() )

    resource.Clear()

    print( "\nafter")
    timer.Simple(0, function()
        PrintTable( resource.GetAll() )
    end)
```

## Functions
`resource.RemoveWorkshop( wsid )`
`resource.RemoveFile( path )`
`resource.GetAll()`
`resource.Clear()`