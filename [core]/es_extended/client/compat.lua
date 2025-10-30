--All client-side functions outsourced from the Core to the lib will be stored here for compatability, e.g:

function ESX.RegisterInput(command_name, label, input_group, key, on_press, on_release)
    return xLib.addKeybind({
        name = command_name,
        description = label,
        defaultMapper = input_group,
        defaultKey = key,
        onPressed = on_press,
        onReleased = on_release
    })
end